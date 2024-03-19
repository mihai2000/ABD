-- question:Get the largest and the smallest city in each state.

query:
db.project.aggregate([
  {
    $group: {
      _id: {
        state_id: "$state_id",
        city: "$city",
        state_name: "$state_name"
      },
      population: { $sum: "$population" }
    }
  },
  {
    $sort: {
      "_id.state_id": 1,
      "population": -1
    }
  },
  {
    $group: {
      _id: "$_id.state_id",
      largest_city: { $first: "$_id.city" },
      largest_city_population: { $first: "$population" },
      smallest_city: {$last: "$_id.city" },
      smallest_city_population: { $last: "$population" }
    }
  },
  {
    $project: {
      _id: 0,
      state_id: "$_id",
      state_name: "$_id.state_name",
      largest_city: 1,
      largest_city_population: 1,
      smallest_city: 1,
      smallest_city_population: 1
    }
  }
])
output:
[
  {
    largest_city: 'Los Angeles',
    largest_city_population: 2467525,
    smallest_city: 'Bard',
    smallest_city_population: 0,
    state_id: 'CA'
  },
  {
    largest_city: 'Brooklyn',
    largest_city_population: 2576771,
    smallest_city: 'Depauville',
    smallest_city_population: 0,
    state_id: 'NY'
  },
  {
    largest_city: 'Albuquerque',
    largest_city_population: 656673,
    smallest_city: 'Tome',
    smallest_city_population: 0,
    state_id: 'NM'
  },
  {
    largest_city: 'Indianapolis',
    largest_city_population: 963961,
    smallest_city: 'Delong',
    smallest_city_population: 0,
    state_id: 'IN'
  },
  {
    largest_city: 'Denver',
    largest_city_population: 1114544,
    smallest_city: 'Lucerne',
    smallest_city_population: 0,
    state_id: 'CO'
  },
  {
    largest_city: 'Honolulu',
    largest_city_population: 413517,
    smallest_city: 'Fort Shafter',
    smallest_city_population: 0,
    state_id: 'HI'
  },
  {
    largest_city: 'Fargo',
    largest_city_population: 125705,
    smallest_city: 'Abercrombie',
    smallest_city_population: 0,
    state_id: 'ND'
  },
  {
    largest_city: 'Omaha',
    largest_city_population: 555771,
    smallest_city: 'Reynolds',
    smallest_city_population: 0,
    state_id: 'NE'
  },
  {
    largest_city: 'Charlotte',
    largest_city_population: 941263,
    smallest_city: 'Cumberland',
    smallest_city_population: 0,
    state_id: 'NC'
  },
  {
    largest_city: 'Washington',
    largest_city_population: 701620,
    smallest_city: 'Washington Navy Yard',
    smallest_city_population: 0,
    state_id: 'DC'
  },
  {
    largest_city: 'Billings',
    largest_city_population: 137935,
    smallest_city: 'Ethridge',
    smallest_city_population: 0,
    state_id: 'MT'
  },
  {
    largest_city: 'Merizo',
    largest_city_population: 0,
    smallest_city: 'Barrigada',
    smallest_city_population: 0,
    state_id: 'GU'
  },
  {
    largest_city: 'Baltimore',
    largest_city_population: 616822,
    smallest_city: 'Morganza',
    smallest_city_population: 0,
    state_id: 'MD'
  },
  {
    largest_city: 'Columbus',
    largest_city_population: 866517,
    smallest_city: 'Homer',
    smallest_city_population: 0,
    state_id: 'OH'
  },
  {
    largest_city: 'Portland',
    largest_city_population: 65855,
    smallest_city: 'Coopers Mills',
    smallest_city_population: 0,
    state_id: 'ME'
  },
  {
    largest_city: 'Worcester',
    largest_city_population: 185507,
    smallest_city: 'Wendell Depot',
    smallest_city_population: 0,
    state_id: 'MA'
  },
  {
    largest_city: 'Wichita',
    largest_city_population: 419284,
    smallest_city: 'Gas',
    smallest_city_population: 0,
    state_id: 'KS'
  },
  {
    largest_city: 'Manchester',
    largest_city_population: 116801,
    smallest_city: 'Wonalancet',
    smallest_city_population: 0,
    state_id: 'NH'
  },
  {
    largest_city: 'Oklahoma City',
    largest_city_population: 686085,
    smallest_city: 'Monroe',
    smallest_city_population: 0,
    state_id: 'OK'
  },
  {
    largest_city: 'Philadelphia',
    largest_city_population: 1581830,
    smallest_city: 'Gibson',
    smallest_city_population: 0,
    state_id: 'PA'
  }
]