const quickSort = (list) => {
  const length = list.length;

  if (length < 2) {
    return list;
  }

  const pivotIndex = Math.floor(length / 2);
  const pivot = list[pivotIndex];

  const newList = [...list.slice(0, pivotIndex), ...list.slice(pivotIndex + 1)]

  const lesser = [];
  const greater = [];

  newList.forEach((x) => {
    if (x <= pivot) {
      lesser.push(x);
    } else {
      greater.push(x);
    }
  });

  return [...quickSort(lesser), pivot, ...quickSort(greater)];
};

console.log(quickSort([10, 5, 2, -15, 2, 3, -10, 7]));