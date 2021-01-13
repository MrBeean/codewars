function solve(stones) {
  let count = 0;
  let iterator = 0;
  for (let stone of stones) {
    if (stone === stones[iterator+1]) {
      count += 1;
    }
    iterator += 1;
  }
  return count
}

console.log(solve("RGBRGB")); //0
console.log(solve("GBRGGRBBBBRRGGGB")); //7
console.log(solve("GBBBGGRRGRB")); //4
