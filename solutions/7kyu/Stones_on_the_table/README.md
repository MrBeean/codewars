# Stones_on_the_table

### Link
[Kata](https://www.codewars.com/kata/5f70e4cce10f9e0001c8995a)

### Description
Найти минимальное количество камней, которые нужно убрать со стола, чтобы камни в каждой паре соседних камней имели разные цвета.
        
        "RGGRGBBRGRR"  => 3

### Solution ruby
Разбиваем на массив, перебираем элементы с индексом,  при совпадении увеличиваем `counter`

### BEST practice ruby
Оказывается есть метод `squeeze`, который убирает дубликаты букв...

```ruby
def solution(stones)
  stones.size - stones.squeeze.size
end
```

---

### Solution javascript
Перебор строки, через `for` при совпадении увеличиваем `counter`

### BEST practice javascript
```javascript
function solve(stones) {
  let count = 0
  for (let i = 1; i <= stones.length; i++) {
    if (stones[i] === stones[i-1]) { count++ }
  }
  return count
}

```