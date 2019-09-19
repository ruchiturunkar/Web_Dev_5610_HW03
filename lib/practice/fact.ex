defmodule Practice.Fact do
 
  def parse_int(text) do
    {num, _} = Integer.parse(text)
    num
  end

  def mod_int2(num) do
	mod1 = Integer.mod(num,2)
	mod1
  end

  def mod_int3(num) do
 	mod1 = Integer.mod(num,3)
        mod1
  end

  def mod_int5(num) do
	mod1 = Integer.mod(num,5)
	mod1
  end

  def fact(x) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    n = parse_int(x)
    z = mod_int2(n)
    y = 0
	if z == 0 do 2
	n=parse_int(n/2)
	end
    z = mod_int3(n) 
        if z == 0 do
	3
   	n=parse_int(n/3) 
	end
    z = mod_int5(n)
	if z == 0 do
	 5
	 n = parse_int(n/5)
	end

    if n != 0 do
	fact(n) 
    end
	 
  end  		
    # Hint:
    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching
end
