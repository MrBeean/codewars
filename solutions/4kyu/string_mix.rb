def mix(s1, s2)
  answer = []

  string1 = s1.gsub(/[A-Z]|\W|\d/, '').split('')
  string1 = string1.uniq.map { |x| [x, string1.count(x)] }.to_h

  string2 = s2.gsub(/[A-Z]|\W|\d/, '').split('')
  string2 = string2.uniq.map! { |x| [x, string2.count(x)] }.to_h

  strings = string1.merge(string2) { |_key, old, new| old > new ? old : new }.sort_by { |k, v| [-v, k] }.to_h
  strings = strings.delete_if { |_key, value| value == 1 }

  return '' if strings.empty?

  strings.keys.each do |key|
    if string1[key] != string2[key] && string1[key].nil? && !string2[key].nil?
      answer << "2:#{key * string2[key]}"
    elsif string1[key] != string2[key] && string2[key].nil? && !string1[key].nil?
      answer << "1:#{key * string1[key]}"
    elsif string1[key] != string2[key] && !string2[key].nil? && !string1[key].nil?
      answer << if string1[key] > string2[key]
                  "1:#{key * string1[key]}"
                else
                  "2:#{key * string2[key]}"
                end
    elsif string1[key] == string2[key] && string1[key] > 1
      answer << "=:#{key * string1[key]}"
    end
  end
  answer.sort_by { |x| [-x.size, x[0], x[-1]] }.join('/')
end

# BEST practise
# def mix(s1, s2)
#   selection = ('a'..'z').to_a.select { |letter| s1.count(letter) > 1 || s2.count(letter) > 1 }
#   selection.map! do |selection|
#     if s1.count(selection) > s2.count(selection)
#       "1:#{selection * s1.count(selection)}"
#     elsif s1.count(selection) < s2.count(selection)
#       "2:#{selection * s2.count(selection)}"
#     else
#       "=:#{selection * s1.count(selection)}"
#     end
#   end
#   selection.sort_by { |x| [-x.size, x[0], x[-1]] }.join("/")
# end

mix('8yzmk5wjpp/hxpu7miic%bzfgQspsn', "Mewkb6yjhn'exls6tlpt<vdep:oyvk") #=> "1:pppp/2:eee/1:ii/1:mm/1:ss/1:zz/2:kk/2:ll/2:tt/2:vv/2:yy"
