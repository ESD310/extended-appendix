import matplotlib.pyplot as plt
import pandas as pd
import numpy as np


def get_est_pos(t, t_start, t_stop):
    pos_start = (0, 1, 0.17)
    pos_stop = (0,-1,0.17)

    #t_start = 11036
    #t_stop = 38989
    dt = t_stop - t_start
    t = t-t_start
    dx = (pos_stop[0] - pos_start[0]) /dt
    dy = (pos_stop[1]  - pos_start[1]) /dt
    dz = (pos_stop[2]  - pos_start[2]) /dt
    return (dx*t + pos_start[0], dy*t + pos_start[1], dz*t + pos_start[2])


def generate_error(data: pd.DataFrame, t_start, t_stop):
    i_start =  data[data["TIME"] == t_start].first_valid_index()
    i_stop = data[data["TIME"] == t_stop].first_valid_index()

    x_list = []
    y_list = []
    z_list = []
    
    for i in range(i_start, i_stop):
        row = data.iloc[i]
        pos_est = get_est_pos(row["TIME"], t_start, t_stop)
        x = row["X"] - pos_est[0]
        y = row["Y"] - pos_est[1]
        z = row["Z"] - pos_est[2]
        x_list.append(x)
        y_list.append(y)
        z_list.append(z)

    dictionary = {"x": x_list, "y": y_list, "z": z_list}
    result = pd.DataFrame(data=dictionary)
    return result

def euclid_mean(data: pd.DataFrame):
    return (data["x"].mean(), data["y"].mean(), data["z"].mean())

def euclid_std(data: pd.DataFrame):
    res = data.std()
    return (res[0]**2+res[1]**2+res[2]**2)**(1/2)

def euclid_len(data: tuple[float, float ,float]):
    return (data[0]**2 + data[1]**2 + data[2]**2)**(1/2)

def plot_error(data: list[pd.DataFrame]):
    subplt = plt.subplot(projection="3d")

    for i in range(0, len(data)):
        subplt.scatter(errors[i]["x"], errors[i]["y"], errors[i]["z"])

    subplt.set_xlabel("x [m]")
    subplt.set_ylabel("y [m]")
    subplt.set_zlabel("z [m]")
    return subplt


def print_raw(data: pd.DataFrame, t_start, t_stop):
    fig = plt.figure()
    subplt = fig.add_subplot(projection="3d")



    pos_start = (0, 1, 0.17)
    pos_stop = (0,-1,0.17)
    x = [pos_start[0], pos_stop[0]]
    y = [pos_start[1], pos_stop[1]]
    z = [pos_start[2], pos_stop[2]]
    subplt.plot(x,y,z)
    
    
    
    i_start =  data[data["TIME"] == t_start].first_valid_index()
    i_stop = data[data["TIME"] == t_stop].first_valid_index()

    for i in range(i_start, i_stop):
        row = data.iloc[i]
        pos_est = get_est_pos(row["TIME"], t_start, t_stop)
        x = [row["X"], pos_est[0]]
        y = [row["Y"], pos_est[1]]
        z = [row["Z"], pos_est[2]]
        
        mark = subplt.plot(x,y,z, marker='none', markersize=6, alpha=0.6, linewidth=0.4)
        subplt.plot(row["X"], row["Y"], row["Z"], marker=".", markersize=6, linewidth=0.4, color=mark[0].get_color())
   
    pos_start = (0, 1, 0.17)
    pos_stop = (0,-1,0.17)

    subplt.set_xlim(pos_start[0]-0.5, pos_start[0]+0.5)
    subplt.set_ylim(pos_stop[1]-0.5, pos_start[1]+0.5)

def fix_z(data: pd.DataFrame):
    z_satellite = 2.249
    data.loc[data['Z'] > z_satellite, 'Z'] = 2*z_satellite - data["Z"]
    return data


if __name__ == "__main__":

    t_start = [11036, 4675, 7645, 8011]
    t_stop  = [38989, 14052, 14610, 13907]

    data =[]

    data.append(fix_z(pd.read_csv("Test1_speed20.log")))
    #data.append(fix_z(pd.read_csv("Test2_speed40.log")))
    data.append(fix_z(pd.read_csv("Test3_speed60.log")))
    data.append(fix_z(pd.read_csv("Test4_speed80.log")))
    data.append(fix_z(pd.read_csv("Test5_speed100.log")))

    errors = []

    for i in range(0, len(data)):
        errors.append(generate_error(data[i], t_start[i],t_stop[i])) 
        plot_error([errors[i]])
        print("i: {}: SD: {:0.2f}, VAR: {:0.2f}".format(i, euclid_std(errors[i]), euclid_std(errors[i])**2))
        print(euclid_len(euclid_mean(errors[i])))
        plt.show(block=False)
        
plt.show()



