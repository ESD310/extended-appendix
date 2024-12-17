import plotly.graph_objects as go
import csv
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
def plot_data():
    with open('results/Simfile_Testroom_4_sats.csv', newline='') as csvfile:
        table = csv.reader(csvfile, delimiter=' ', quotechar='|')
        x = []
        y = []
        z = []
        i = []
        for row in table:
            values = row[0].split(",")
            try:
                x.append(float(values[0]))
                y.append(float(values[1]))
                z.append(float(values[2]))
                i.append(float(values[3]))
            except ValueError:
                1+1 #Den her kan man jo tænke lidt over
        

        

        
        fig= go.Figure(data=go.Isosurface(x=x,y=y,z=z,value=i,isomin=1,isomax=40, opacity=0.2, surface_count=8))
        
        fig.show()


def contour_2D(filename: str, z_index: int, levels:int = 5):
    data = pd.read_csv(filename)
    z_vals = data.groupby('z').first().reset_index()
    z_val = z_vals.iloc[z_index]["z"]
    data_slice = data.loc[data['z']==z_val]



    fig = plt.figure()
    subfig = fig.add_subplot()
    x_unique = np.unique(data_slice["x"])
    y_unique = np.unique(data_slice["y"])
    X,Y = np.meshgrid(x_unique,y_unique)

    # Step 3: Map z-values onto the grid
    Z = np.full_like(X, np.nan, dtype=float)  # Initialize grid for Z values

    for x, y, z in zip(data_slice["x"], data_slice["y"], data_slice["i"]):
        xi = np.where(x_unique == x)[0][0]
        yi = np.where(y_unique == y)[0][0]
        Z[yi, xi] = z

    CS = subfig.contour(X, Y, Z, levels=levels, cmap='viridis')
    subfig.clabel(CS, fontsize=10)
    subfig.set_aspect('equal')
    subfig.grid()
    subfig.set_title("Avg. iterations, z={:0.2f}".format(z_val))
    plt.xlim(data["x"].min(), data["x"].max())
    plt.ylim(data["y"].min(), data["y"].max())

    return 
if __name__ == "__main__":
    #contour_2D("results/Simfile_Testroom.csv", 40, 20)
    #contour_2D("results/Simfile_Testroom.csv", 80, 20)
    contour_2D("results/Simfile_Testroom_4_sats.csv", 32, 20)
    plt.show()
    #plot_data()
