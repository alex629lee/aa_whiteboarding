// Part 1: Say that I gave you an array of length n, containing the numbers 1..n
// in jumbled order. "Sort" this array in O(n) time.You should be able to do this
// without looking at the input.

// O(N) time | O(N) space 
function sortSeme(arr) {
  const sortedArr = [];

  for (let i = 1; i <= arr.length; i++) {
    sortedArr.push(i);
  }

  return sortedArr;
}

console.log(sortSeme([1, 3, 2, 4, 5]));


// Part 2: Say that I give you an array of length n with numbers in the range
// 1..m(m >= n). Sort this array in O(n + m) time.You may use O(m) memory.

// [5, 2, 5, 5]

function thugSort(arr) {
  const max = arr.max(); // O(n)
  const sorted = arrayFromMax(max); // O(m)
  const set = new Set(arr); // O(n)
  return sorted.filter(ele => set.has(ele)); // O(m)
}

Array.prototype.max = function() {
  return this.reduce((acc, ele) => {
    return ele > acc ? ele : acc;
  })
}

function arrayFromMax(max) {
  const arr = [];
  for (let i = 1; i <= max; i++) {
    arr.push(i);
  }
  return arr;
}







// Part 3: Say I give you an array of n strings, each of length k. I claim that,
// using merge sort, you can sort this in O(knlog(n)), since comparing a pair of
// strings takes O(k) time.