
use std::iter;

use csv::Writer;
use rayon::prelude::*;
use iter_num_tools::{lin_space};
use indicatif::{HumanDuration, ProgressBar};
use vecmath::{vec3_add, vec3_len, vec3_normalized_sub, vec3_scale, vec3_sub, Vector3};


extern crate vecmath;

const V_SOUND: f32 = 343.0; // m/s, Vi antager ret så fint at lydens hastighed er konstant


fn main() {
    /*let test_sats = [
        Satellite{pos: [1.545,-1.928,2.247], ID: 0},  
        Satellite{pos: [-1.696,-1.929,2.250], ID: 1},  
        Satellite{pos: [0.334,2.34,2.256], ID: 2}, 
    ];*/

    let test_sats =[
        Satellite{pos: [0.0, 0.0, 2.0], ID: 0},  
        Satellite{pos: [0.0, 4.0, 2.0], ID: 0},  
        Satellite{pos: [4.0, 0.0, 2.0], ID: 0},  
        Satellite{pos: [4.0, 4.0, 2.0], ID: 0},  
    ];

    println!("Starting simulation");
    let (points, i) = simulate_all_positions(&test_sats,[-1.0,-1.0,0.0], [5.0,5.0,2.0],64, 0.05);
    

    //simulate_iterations([1.0,1.0,1.0],[1.81, 1.8, 1.0], &test_sats);
    
    let mut wtr = Writer::from_path("results/Simfile_Testroom_4_sats.csv").unwrap();
    wtr.write_record(&["x", "y", "z", "i"]).expect("AAHHHH ERROR I AT WRITE");
    for n in 0..points.len(){
        wtr.write_field(points[n][0].to_string()).expect("AAHHHH ERROR I AT WRITE");
        wtr.write_field(points[n][1].to_string()).expect("AAHHHH ERROR I AT WRITE");
        wtr.write_field(points[n][2].to_string()).expect("AAHHHH ERROR I AT WRITE");
        wtr.write_field(i[n].to_string()).expect("AAHHHH ERROR I AT WRITE");
        wtr.write_record(None::<&[u8]>).expect("AAHHHH ERROR I AT WRITE");
    }
    wtr.flush().expect("AAHHHH ERROR I AT Lukke filen");
    
    
}

struct Satellite {
    pos: Vector3<f32>,    
    ID: u16,
}
struct Beacon {
    pos_real: Vector3<f32>,
    pos_est: Vector3<f32>,
}
impl Beacon {
    fn get_tof (&self, satellite: &Satellite) -> f32 {
        return vec3_len(vec3_sub(self.pos_real, satellite.pos)) / V_SOUND;
    }
    fn position_error(&self) -> f32{
        return vec3_len(vec3_sub(self.pos_est, self.pos_real));
    }
    fn project(&mut self, satellite: &Satellite, tof: f32){
        let dist = V_SOUND * tof;
        let n = vec3_normalized_sub(self.pos_est, satellite.pos);
        //hvis vi tror vi er direkte på punktet hvilken fucking vej skal man så projektere???
        for axis in n{
            if axis.is_nan(){
                //println!("ILLEGAL AXIS");
                return;
            }
        }
        self.pos_est = vec3_add(vec3_scale(n, dist), satellite.pos); 
    }
}



fn simulate_all_positions(satellites: &[Satellite], room_start: Vector3<f32>, room_stop: Vector3<f32>, axis_size: usize, threshold: f32) -> (Vec<Vector3<f32>>, Vec<u32>){
    println!("Setting up sim");
    let num_of_simulation_points: usize = axis_size.pow(3);
    let mut points: Vec<Vector3<f32>> = Vec::new();
    let bar_setup = ProgressBar::new(num_of_simulation_points as u64);
    for x in lin_space(room_start[0]..room_stop[0],axis_size){
        for y in lin_space(room_start[1]..room_stop[1],axis_size){
            for z in lin_space(room_start[2]..room_stop[2],axis_size){
                points.push([x,y,z]);
                bar_setup.inc(1);
            }
        }
    }
    bar_setup.finish_with_message("Success");
    println!("Running sim");
    let bar_simulator = ProgressBar::new(num_of_simulation_points as u64);

    let iterations = points.par_iter().map(|point| { 
        bar_simulator.inc(1);
        simulate_average(room_start, room_stop, 10, *point, &satellites, threshold).1 as u32
    }).collect::<Vec<u32>>();

    /*
    for n in 0..points.len(){
        let (tof, iteration_result) = simulate_average(room_start, room_stop, 10, points[n], &satellites, threshold);
        iterations[n] = iteration_result as u32;
        bar_simulator.inc(1);
    }
    */
    bar_simulator.finish();
    println!("Simulation done elapsed: {}",HumanDuration(bar_simulator.elapsed()));
    return (points, iterations);
}




///### Arguments
/// * `threshold` - den grænse der skal stoppe systemet med at iterere.
/// * `start_pos` - vores første gæt,
/// * `real_pos`  - den virkelige position,
/// * `satellites`- liste af satelliter systemet må bruges,
fn get_iterations(threshold: f32, start_pos: Vector3<f32>, real_pos: Vector3<f32>, satellites: &[Satellite]) -> (f64, usize){
    let mut beacon: Beacon = Beacon{pos_est: start_pos, pos_real: real_pos}; //sætter en beacon op
    let mut tof_total: f32 = 0.0;
    let mut iterations: usize = 0;
    let mut test = start_pos[0].to_bits();
    test ^= start_pos[1].to_bits();
    test ^= start_pos[2].to_bits();
    test ^= real_pos[0].to_bits();
    test ^= real_pos[1].to_bits();
    test ^= real_pos[2].to_bits();

    test = test % 8;
    let num_satellites = satellites.len();
    
    while beacon.position_error() > threshold {
        let tof = beacon.get_tof(&satellites[(iterations + test as usize) % num_satellites]);
        beacon.project(&satellites[(iterations + test as usize)% num_satellites], tof);
        iterations += 1;
        tof_total += tof;
        if iterations > 1000 {
            return (100.0, 1000);
        }
    }
    return (tof_total.into(), iterations);
}


fn simulate_iterations(start_pos: Vector3<f32>, real_pos: Vector3<f32>, satellites: &[Satellite]){
    let mut beacon: Beacon = Beacon{pos_est: start_pos, pos_real: real_pos}; //sætter en beacon op
    let mut _tof_total: f32 = 0.0;
    let mut iterations: usize = 0;
    let mut test = start_pos[0].to_bits();


    test = test % 8;
    let num_satellites = satellites.len();

    while iterations < 10 {

        let tof = 0.00824;//beacon.get_tof(&satellites[(iterations + test as usize) % num_satellites]);
        beacon.project(&satellites[(iterations + test as usize)% num_satellites], tof);
        iterations += 1;
        _tof_total += tof;
        println!("iterations: {}", iterations);
        dbg!(beacon.pos_est);
        
    }

}



/// 
/// 
/// ### Arguments
/// * `room_start` - ene hjørne af den boks der simuleres i
/// * `room_stop` - andet hjørne af den boks der simuleres i
/// * `axis_size` - hvor mange punkter der skal simuleres på x,y,z hvor det totale antal punkter er r^3
/// * `position` - Det punkt der skal findes gennemsnitsværdien for
/// * `satellites` - De satelliter der simuleres med
/// * `threshold` - hvor stor error der må være før simulationen går videre
fn simulate_average(room_start: Vector3<f32>, room_stop: Vector3<f32>, axis_size: usize, position:Vector3<f32>, satellites: &[Satellite], threshold: f32) -> (f64, usize){
    
    let num_of_points = axis_size.pow(3);

    
    let mut tof_tot: f64 = 0.0;
    let mut iterations: usize = 0;
    for x in lin_space(room_start[0]..room_stop[0],axis_size){
        for y in lin_space(room_start[1]..room_stop[1],axis_size){
            for z in lin_space(room_start[2]..room_stop[2],axis_size){
                let point:Vector3<f32> = [x,y,z];
                let (tof, sub_iter) = get_iterations(threshold, point, position, satellites);
                tof_tot += tof;
                iterations += sub_iter;
            }
        }
    }

    return (tof_tot/(num_of_points as f64), iterations/num_of_points);
}




