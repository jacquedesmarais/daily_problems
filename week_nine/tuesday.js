var people = [
  {name: "Saron", age: 34},
  {name: "Majora", age: 28},
  {name: "Danilo", age: 45}
];

console.log(people.sort(function(personA, personB) {
  return personA.age - personB.age;
}));
