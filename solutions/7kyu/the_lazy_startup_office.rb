def bin_rota(arr)
  arr.each_with_index.map { |x, i| i.odd? ? x.reverse : x }.flatten
end

# p bin_rota([["Bob","Nora"],["Ruby","Carl"]])
