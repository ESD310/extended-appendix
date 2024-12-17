import csv
import numpy

distances = {30, 50, 70, 90, 110, 150, 170, 190, 210, 230, 250, 270, 290, 310, 330, 350, 370, 390, 410, 430, 450, 470, 490}

distance_output = []
tof_output = []
for distance in distances:
    with open(str(distance) +'cm.txt', newline='') as file:
        content = file.read()
        measurements = content.split(',')
        for measurement in measurements:
            distance_output.append(distance)
            tof_output.append(measurement)




with open('distance_data.csv','w') as f:
    f.write('# Data over målte afstande og TOF i mikrosekunder\n')
    f.write('Distance,TOF\n')
    for x in zip(distance_output, tof_output):
        if(not (x[1].isspace() or x[1] == "")):
            f.write("{}, {}\n".format(x[0], x[1]))