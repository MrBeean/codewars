# Max-min arrays

### Link
[Kata](https://www.codewars.com/kata/5a090c4e697598d0b9000004)

### Description
Задача на сортировку массива
перывй самый большой элемент, первый самый маленький, второй самый болшой и т. д.

    solve([15,11,10,7,12]) = [15,7,12,10,11]
    
### Solution ruby
Решил через рекурсивное наполнение массива поочередно самым большим и самым маленьким элементом,
забирая через сортировку и метод `pop`

    .sort!.pop
    .reverse!.pop

после схлопываем массивы и удаляем пустые элементы
### BEST practice ruby
массив сорируется и переворачивается, после чего используется метод zip
в который в качестве аргумента передается отсортированный массив, таким образом получаем
    
    [[15, 7], [12, 10], [11, 11], [10, 12], [7, 15]]

после чего получившийся массив схлопывается и берется кол-во элементов, равное длинне массива

```ruby
def solve(arr)
  arr.sort.reverse.zip(arr.sort).flatten.take(arr.length)
end
```
---

### Solution javascript
Решил через рекурсию, сортируем от большего к меньшему, забираем первый и последний элемент в новый массив
после чего повторно вызываем функцию, до тех пор пока массив не станет пуст
в конце схлопываем массив и фильтруем от пустых значений через вызов callback стрелочной функции у функции `filter`

### BEST practice javascript

```javascript
function solve(arr){
  var minMax = [];
  arr.sort((a,b)=>a-b);
  for(var i = 0, j = arr.length-1; i <= j; i++,j--){
    if(i != j) minMax.push(arr[j]), minMax.push(arr[i]);
    else minMax.push(arr[i]);
  }
  return minMax;
}
```