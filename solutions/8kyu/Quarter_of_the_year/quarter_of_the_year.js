// Найти в какой четверти месяц, по его номеру
// В каждой четверти 3 месяца, делим на 3 - получаем четверть + округляем.

const quarterOf = (month) => {
  return Math.ceil(month / 3)
};

// BEST practice
//

console.log(quarterOf(11)) //=> 4
