defmodule MyList do
 def sum(list), do: _sum(list, 0)

 defp _sum([], total), do: total
 defp _sum([head|tail], total), do: (_sum(tail, head+total))

 def wt([], _target), do: []
 def wt([head = [_,target,_,_] | tail] , target), do: (
  [[head] | wt(tail, target)]
 )
 def wt([ _ | tail ], target), do: wt(tail, target)


 def span(from, to), do: _span(from, to, [])
 def _span(from, to, list) when from==to do
   list ++ [to]
 end
 def _span(from, to, list) do
   list ++ [from | _span(from+1, to, list)]
 end


 def test_data do
   [
     [22334, 27, 15, 1.25],
     [22334, 22, 15, 1.25],
     [22334, 27, 15, 1.25],
     [22334, 27, 15, 1.25],
     [22334, 25, 15, 1.25]
   ]
 end

end
