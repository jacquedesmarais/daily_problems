var meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner", "salmon with lemon rice"]];
var mealOfDay = {};

for (i = 0; i < meals.length; i++) {
  mealOfDay[meals[i][0]] = meals[i][1];
}

console.log(mealOfDay);