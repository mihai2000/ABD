-- question: Get the states with a total population of over 10 million.

query:
db.project.aggregate([
  {
    $group: {
      _id: "$state_id",
      total_population: { $sum: "$population" },
    }
  },
  {
    $match: {
      total_population: { $gt: 10000000 }
    }
  }
])

output:
[
  { _id: 'NC', total_population: 10377391 },
  { _id: 'NY', total_population: 19513330 },
  { _id: 'PA', total_population: 12790016 },
  { _id: 'FL', total_population: 21153257 },
  { _id: 'GA', total_population: 10511012 },
  { _id: 'CA', total_population: 39323978 },
  { _id: 'TX', total_population: 28628347 },
  { _id: 'IL', total_population: 12714937 },
  { _id: 'OH', total_population: 11669378 }
]