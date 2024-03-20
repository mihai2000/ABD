-- question:Get the largest and the smallest counties in each state.

query:
db.project.aggregate([
  {
    $group: {
      _id: {
        state_id: "$state_id",
        county_name: "$county_name",
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
      largest_county: { $first: "$_id.county_name" },
      largest_county_population: { $first: "$population" },
      smallest_county: {$last: "$_id.county_name" },
      smallest_county_population: { $last: "$population" }
    }
  },
  {
    $project: {
      _id: 0,
      state_id: "$_id",
      state_name: "$_id.state_name",
      largest_county: 1,
      largest_county_population: 1,
      smallest_county: 1,
      smallest_county_population: 1
    }
  }
])


output:
[
  {
    largest_county: 'Fairfax',
    largest_county_population: 1174946,
    smallest_county: 'Charlottesville',
    smallest_county_population: 0,
    state_id: 'VA'
  },
  {
    largest_county: 'Baltimore',
    largest_county_population: 1420436,
    smallest_county: 'Somerset',
    smallest_county_population: 23910,
    state_id: 'MD'
  },
  {
    largest_county: 'Middlesex',
    largest_county_population: 1596040,
    smallest_county: 'Nantucket',
    smallest_county_population: 11212,
    state_id: 'MA'
  },
  {
    largest_county: 'Cumberland',
    largest_county_population: 295064,
    smallest_county: 'Piscataquis',
    smallest_county_population: 21170,
    state_id: 'ME'
  },
  {
    largest_county: 'District of Columbia',
    largest_county_population: 701807,
    smallest_county: 'District of Columbia',
    smallest_county_population: 701807,
    state_id: 'DC'
  },
  {
    largest_county: 'Yellowstone',
    largest_county_population: 160185,
    smallest_county: 'Petroleum',
    smallest_county_population: 396,
    state_id: 'MT'
  },
  {
    largest_county: 'Guam',
    largest_county_population: 0,
    smallest_county: 'Guam',
    smallest_county_population: 0,
    state_id: 'GU'
  },
  {
    largest_county: 'Mecklenburg',
    largest_county_population: 1110856,
    smallest_county: 'Tyrrell',
    smallest_county_population: 3902,
    state_id: 'NC'
  },
  {
    largest_county: 'Hillsborough',
    largest_county_population: 415340,
    smallest_county: 'Oxford',
    smallest_county_population: 341,
    state_id: 'NH'
  },
  {
    largest_county: 'Denver',
    largest_county_population: 720849,
    smallest_county: 'San Juan',
    smallest_county_population: 621,
    state_id: 'CO'
  },
  {
    largest_county: 'Honolulu',
    largest_county_population: 979631,
    smallest_county: 'Kalawao',
    smallest_county_population: 436,
    state_id: 'HI'
  },
  {
    largest_county: 'Cass',
    largest_county_population: 180324,
    smallest_county: 'Sheridan',
    smallest_county_population: 1115,
    state_id: 'ND'
  },
  {
    largest_county: 'Douglas',
    largest_county_population: 566666,
    smallest_county: 'McPherson',
    smallest_county_population: 306,
    state_id: 'NE'
  },
  {
    largest_county: 'Franklin',
    largest_county_population: 1295658,
    smallest_county: 'Monroe',
    smallest_county_population: 12033,
    state_id: 'OH'
  },
  {
    largest_county: 'Marion',
    largest_county_population: 958426,
    smallest_county: 'Ohio',
    smallest_county_population: 5103,
    state_id: 'IN'
  },
  {
    largest_county: 'Bernalillo',
    largest_county_population: 675354,
    smallest_county: 'Los Alamos',
    smallest_county_population: 0,
    state_id: 'NM'
  },
  {
    largest_county: 'Shelby',
    largest_county_population: 941418,
    smallest_county: 'Moore',
    smallest_county_population: 3440,
    state_id: 'TN'
  },
  {
    largest_county: 'St. John',
    largest_county_population: 0,
    smallest_county: 'St. Croix',
    smallest_county_population: 0,
    state_id: 'VI'
  },
  {
    largest_county: 'Chittenden',
    largest_county_population: 165857,
    smallest_county: 'Essex',
    smallest_county_population: 6586,
    state_id: 'VT'
  },
  {
    largest_county: 'Fulton',
    largest_county_population: 1116138,
    smallest_county: 'Taliaferro',
    smallest_county_population: 1596,
    state_id: 'GA'
  }
]