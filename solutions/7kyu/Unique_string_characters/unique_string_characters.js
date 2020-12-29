function solve(a,b){
  let filteredA = a.split('').filter(
      function(e) {
        return this.indexOf(e) < 0;
      },
      b.split('')
  );

  let filteredB = b.split('').filter(
      function(e) {
        return this.indexOf(e) < 0;
      },
      a.split('')
  );
  return filteredA.join('') + filteredB.join('');
}

console.log(solve("xyab", "xzca")); //ybzc"
console.log(solve("xyabb", "xzca")); //"ybbzc"