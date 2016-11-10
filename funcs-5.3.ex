fizz = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,c -> "#{c}"
end

buzz = fn(n) ->
  fizz.(rem(n,3),rem(n,5),n)
end

IO.puts buzz.(10)
IO.puts buzz.(11)
IO.puts buzz.(12)
IO.puts buzz.(13)
IO.puts buzz.(14)
IO.puts buzz.(15)
IO.puts buzz.(16)
