-- question:Get the nearest 10 zips from one of Chicago's landmarks, the Willis Tower situated at coordinates 41.878876, -87.635918.

query:
db.project.updateMany(
  {},
  [
    {
      "$set": {
        "location2dsphere.type": "Point",
        "location2dsphere.coordinates": ["$lng", "$lat"]
      }
    }
  ]
)

db.project.createIndex({ location2dsphere: "2dsphere" })

db.project.find(
   {
     location2dsphere: {
       $near: {
         $geometry: {
            type: "Point",
            coordinates: [-87.635918, 41.878876]
         }
       }
     }
   }
).limit(10)

output:
[
  {
    _id: ObjectId('65f70f2ef45258b147045a6a'),
    zip: 60606,
    lat: 41.88178,
    lng: -87.63724,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 3204,
    density: 5330.7,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.63724, 41.88178 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a68'),
    zip: 60604,
    lat: 41.87799,
    lng: -87.62928,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 729,
    density: 3644.3,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.62928, 41.87799 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a67'),
    zip: 60603,
    lat: 41.88018,
    lng: -87.6274,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 1186,
    density: 3859.9,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.6274, 41.88018 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a66'),
    zip: 60602,
    lat: 41.88304,
    lng: -87.62906,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 1596,
    density: 7477.9,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.62906, 41.88304 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a9d'),
    zip: 60661,
    lat: 41.88291,
    lng: -87.64409,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 10734,
    density: 13562.3,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.64409, 41.88291 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a65'),
    zip: 60601,
    lat: 41.88527,
    lng: -87.62197,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 14513,
    density: 14417.8,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.62197, 41.88527 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a6c'),
    zip: 60607,
    lat: 41.87467,
    lng: -87.65175,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 30306,
    density: 5058.2,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.65175, 41.87467 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045aaf'),
    zip: 60654,
    lat: 41.89209,
    lng: -87.63673,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 20812,
    density: 14831.3,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.63673, 41.89209 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a69'),
    zip: 60605,
    lat: 41.86644,
    lng: -87.61956,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 30950,
    density: 8354.1,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.61956, 41.86644 ] }
  },
  {
    _id: ObjectId('65f70f2ef45258b147045a6f'),
    zip: 60611,
    lat: 41.89483,
    lng: -87.61944,
    city: 'Chicago',
    state_id: 'IL',
    state_name: 'Illinois',
    zcta: 'TRUE',
    population: 33937,
    density: 16525.1,
    county_fips: 17031,
    county_name: 'Cook',
    county_weights: { '17031': 100 },
    county_names_all: 'Cook',
    county_fips_all: 17031,
    imprecise: 'FALSE',
    military: 'FALSE',
    timezone: 'America/Chicago',
    location2dsphere: { type: 'Point', coordinates: [ -87.61944, 41.89483 ] }
  }
]