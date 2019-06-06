const count = ([head, ...tail]) => head === undefined ? 0 : 1 + count(tail);

console.log(count([0, 0, 0, 0, 0, 'fsdfasf']));