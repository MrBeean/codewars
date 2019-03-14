def meeting(s)
  array = s.split(';').map { |names| names.split(':') }.map { |names| names.map(&:upcase) }
  array.map! do |names|
    first_name = names.shift
    names << first_name
  end
  array = array.sort_by { |x| [x[0], x[1]] }
  '(' + array.map { |names| names.join(', ') }.join(')(') + ')'
end

string = 'Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill'
meeting(string) # =>
# "(CORWILL, ALFRED)
# (CORWILL, FRED)
# (CORWILL, RAPHAEL)
# (CORWILL, WILFRED)
# (TORNBULL, BARNEY)
# (TORNBULL, BETTY)
# (TORNBULL, BJON)"

# BEST practice
# def meeting(s)
#   s.split(';').map {|el| '(' + el.split(':').reverse.join(', ').upcase+ ')'}.sort.join
# end
