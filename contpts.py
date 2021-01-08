# Import libraries
import json
import matplotlib.pyplot as plt, numpy as np, pandas as pd
from sklearn.neighbors import radius_neighbors_graph
from scipy.sparse.csgraph import connected_components

# Contact spacing
dist1 = 0.2
dist2 = 0.5

# Get connected components and distances
data = pd.read_csv("output/dispcont.csv", names=["x", "y", "w", "one"], usecols=["x", "y"])
data["cc"] = connected_components(radius_neighbors_graph(data.values, 0.06))[1]
ccs = data.groupby("cc").count().reset_index().sort_values("x")[-4:]["cc"].values
data["dist"] = np.sqrt(data["x"]**2 + data["y"]**2)

# Get points
refpts = []
pts = []
for cc in ccs:
    # Filter to connected component
    ccdata = data.loc[data["cc"] == cc]

    # Reference point that is closest to center
    refpt = ccdata.loc[ccdata["dist"].idxmin()]
    ccdata["refdist"] = np.sqrt((ccdata["x"]-refpt["x"])**2 + (ccdata["y"]-refpt["y"])**2)

    # Get first two points
    closest_to_target_dist = ccdata.iloc[(ccdata["refdist"]-dist1).abs().argsort()]
    pt1 = closest_to_target_dist.iloc[0]
    for i, pt2 in closest_to_target_dist.iterrows():
        if np.abs((pt2["x"]-pt1["x"])**2 + (pt2["y"]-pt1["y"])**2) > dist1/3:
            break

    # Get second two points
    closest_to_target_dist = ccdata.iloc[(ccdata["refdist"]-dist2).abs().argsort()]
    pt3 = closest_to_target_dist.iloc[0]
    for i, pt4 in closest_to_target_dist.iterrows():
        if np.abs((pt4["x"]-pt3["x"])**2 + (pt4["y"]-pt3["y"])**2) > dist2/3:
            break

    # Add points to list
    refpts.append(refpt)
    pts += [pt1, pt2, pt3, pt4]

# Convert to DataFrame
pts = pd.DataFrame(pts)
refpts = pd.DataFrame(refpts)
pts["angle"] = np.arctan2(pts["y"], pts["x"])
#print(pts.sort_values("angle")[["x", "y"]].values.tolist())
    
# Plot
plt.gca().set_aspect(1)
plt.plot(data["x"], data["y"], "r.")
plt.plot(refpts["x"], refpts["y"], "b.")
plt.plot(pts["x"], pts["y"], "g.")
plt.show()

# Export to JSON
json.dump((pts.sort_values("angle")[["x", "y"]].values * 1e-6).tolist(), open("contpts.json", "w"))