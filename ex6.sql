-- question:Get the total population situated between 50 and 200 kms around New York's landmark, the Statue of Liberty at coordinates 40.689247, -74.044502.

query:
db.project.aggregate([
  {
    $geoNear: {
      near: {
        type: "Point",
        coordinates: [-74.044502, 40.689247]
      },
      key:"location2dspherical",
      distanceField: "distance",
      maxDistance: 200000,
      minDistance: 50000,
      spherical: true
    }
  },
  {
    $group: {
      _id: null,
      total_population: { $sum: "$population" }
    }
  }
])
output:
 [ { _id: null, total_population: 17679688 } ]