const findSmallest = (arr) => {
  let smallestIndex = 0;
  let smallest = arr[smallestIndex];

  const arrLength = arr.length;

  for (let i = 1; i < arrLength; i++) {
    if (arr[i] < smallest) {
      smallest = arr[i];
      smallestIndex = i;
    }
  }

  return smallestIndex
};

const selectionSort = (arr) => {
  sortedArr = [];

  const arrLength = arr.length;

  for (let i = 0; i < arrLength; i++) {
    smallestIndex = findSmallest(arr);

    sortedArr.push(...arr.splice(smallestIndex, 1));
  }

  return sortedArr
};

console.log(selectionSort([5, 3, 6, 2, 10]))