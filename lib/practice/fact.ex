defmodule Practice.Fact do 
  def parse_int(x) do
	{num,_}=Integer.parse(x)
	num
  end

  def fact(x) do
	n = parse_int(x)
	l = []
   	list = fact1(n,2,l)
	list
  end

  def fact1(n,i,l) do
    	z=rem(n,i)
    	if z==0 do
    	List.insert_at(l,i,-1)
    	end
	i=i+1
    	if i<n do
    	fact1(n,i,l)
    	end
	l	
    end	

end
