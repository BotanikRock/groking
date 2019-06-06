const sum = ([head, ...tail]) => {
  if (head === undefined) {
    return 0
  }

  if (tail.length < 1) {
    return head;
  }

  return head + sum(tail)
};

console.log(sum([2, 4, 6]))