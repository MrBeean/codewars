def valid_spacing(s)
  s.match(/\s+\z/) || s.match(/\A\s+/) || s.match(/\s{2,}/) ?  false : true
end
p valid_spacing('Hello World') #= true
p valid_spacing(' Hello world') #= false
p valid_spacing('Hello  world ') #= false
p valid_spacing('cod ewars ') #= false
p valid_spacing( 'Hello') #= true
p valid_spacing('Helloworld') #= true
