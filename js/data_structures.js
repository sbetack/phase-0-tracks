var colors = ["blue", "pink", "green", "yellow"];

var horseNames = ["Ed", "Black Beauty", "Cupcake", "Harry"];

colors.push("purple");
console.log(colors);

horseNames.push("Sea Biscuit");
console.log(horseNames);

var horseData = {};
for(var i = 0; i < horseNames.length; i++){
  horseData[horseNames[i]] = colors[i];
}
console.log(horseData);


function Car(make, model, year, used){
  this.make = make;
  this.model = model;
  this.year = year;
  this.used = used;

  this.go = function(){console.log("vrooom!");
  };
  this.milage = function(miles){
    if (this.used){
      console.log("This car has " + miles + " miles");
    }else {
      console.log("This is a new car");
    }
  }
}

var newCar = new Car("Ford", "Mustang", 1991, true);
console.log(newCar);
newCar.go();
newCar.milage(100000);

var newCar1 = new Car("Jeep", "Cherokee", 2017, false);
console.log(newCar);
newCar.go();
newCar.milage(0);

var newCar2 = new Car("Tesla", "Model X", 2016, true);
console.log(newCar);
newCar.go();
newCar.milage(10000);

console.log(newCar2.make);

for(var propt in newCar2){
  console.log(propt + ":" + newCar2[propt]);
}


