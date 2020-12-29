def bin_rota(arr)
  arr.each_with_index.map { |x, i| i.odd? ? x.reverse : x }.flatten
end

p bin_rota([["Stefan", "Raj", "Marie"],
            ["Alexa", "Amy", "Edward"],
            ["Liz", "Claire", "Juan"],
            ["Dee", "Luke", "Katie"]])
