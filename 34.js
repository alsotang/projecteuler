var _  = require('lodash');

var range = _.range(10, 2540160 + 1);

var factorial = function (n) {
  if (n === 0) {
    return 1;
  }
  return factorial(n - 1) * n;
};

var nums = _.filter(range, function (number) {
  var numberList = String(number).split('');
  var temp = numberList.map(function (num) {
    return factorial(Number(num));
  });
  var sum = temp.reduce(function (a, b) {
    return a + b;
  }, 0);
  if (number === sum) {
    console.log(number);
    return true;
  }
});

console.log('result', nums);
