def quarter_of(month)
  if month > 6
    month > 9 ? 4 : 3
  else
    month > 3 ? 2 : 1
  end
end


# BEST practice


p quarter_of(11) #=> 4
