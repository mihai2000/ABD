-- question:Get the average city population by state.

query:
query:db.project.aggregate([
  {
    $group: {
      _id: {
        state_id: "$state_id",
        city: "$city"
      },
      population: {
        $sum: "$population"
      }
    }
  },
  {
    $group: {
      _id: "$_id.state_id",
      average_city_population: {
        $avg: "$population"
      }
    }
  }
])
output:
[
  { _id: 'MD', average_city_population: 15168.547738693467 },
  { _id: 'CA', average_city_population: 32989.9144295302 },
  { _id: 'VT', average_city_population: 2400.9307692307693 },
  { _id: 'IN', average_city_population: 9662.64357864358 },
  { _id: 'WI', average_city_population: 8200.99011299435 },
  { _id: 'IA', average_city_population: 3400.2667386609073 },
  { _id: 'KS', average_city_population: 4674.516853932584 },
  { _id: 'MT', average_city_population: 3000.6977401129943 },
  { _id: 'AK', average_city_population: 3273.95067264574 },
  { _id: 'MI', average_city_population: 11873.358333333334 },
  { _id: 'PA', average_city_population: 7794.037781840341 },
  { _id: 'FL', average_city_population: 45199.267094017094 },
  { _id: 'VA', average_city_population: 11742.841160220994 },
  { _id: 'OK', average_city_population: 6927.956140350877 },
  { _id: 'LA', average_city_population: 10410.167410714286 },
  { _id: 'AR', average_city_population: 5219.123050259966 },
  { _id: 'OR', average_city_population: 11536.486187845303 },
  { _id: 'ME', average_city_population: 3175.7369668246447 },
  { _id: 'SD', average_city_population: 2420.2038567493114 },
  { _id: 'CO', average_city_population: 14606.668380462725 }
]
