// Implement the Array.prototype.map function in JavaScript.

Array.prototype.myMap = function (fn) {
  // create empty array to return at the end
  let mapped = [];
  this.forEach(ele => {
    mapped.push(fn(ele));
  })

  return mapped;
}


// In a SQL db, you have two tables, an employees table and a departments table.
// Employees belong to only one department.Write a SQL query that, given a 
// department name, finds all the employees in that department.
```SQL(
  SELECT 
    departments.employees
  FROM
    departments
  WHERE
    departments.name = ?
)
```
