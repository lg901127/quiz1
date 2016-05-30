var printCity = function(object) {
  for (key in object) {
    counter = object[key].length;
    console.log(key + " has " + counter + " main cities ");
  }
}
var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};
printCity(majorCities);
