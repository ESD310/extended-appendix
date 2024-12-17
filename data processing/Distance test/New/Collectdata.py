import csv
import numpy

distances = {50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600}

distance_output = []
tof_output = []
for distance in distances:
    with open(str(distance) +'cm.log', newline='') as file:
        content = file.read()
        measurements = content.split(',')
        for measurement in measurements:
            distance_output.append(distance)
            tof_output.append(measurement)




with open('distance_data.csv','w') as f:
    f.write('Distance,TOF\n')
    for x in zip(distance_output, tof_output):
        if(not (x[1].isspace() or x[1] == "")):
            f.write("{}, {}\n".format(x[0], x[1]))