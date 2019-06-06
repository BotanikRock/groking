const max = (list) => {
  const length = list.length;

  if (length < 2) {
    return list[0];
  }

  if (length === 2) {
    return list[0] < list[1] ? list[1] : list[0];
  }

  const maxNum = max(list.slice(1));

  return list[0] < maxNum ? maxNum : list[0]; 
};


console.log(max([100, 1203, 0, -10, 20, 8, 145]))