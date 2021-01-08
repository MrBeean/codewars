def score_to_tally(score)
  collation = {'0' => '', '1' => 'a', '2' => 'b', '3' => 'c', '4' => 'd'}
  string = ''
  (score / 5).times { string << 'e <br>'}
  string << collation[(score % 5).to_s]
end

p score_to_tally(3)  #=> 'c'
p score_to_tally(10) #=> 'e <br>e <br>'
p score_to_tally(19) #=> 'e <br>e <br>'
