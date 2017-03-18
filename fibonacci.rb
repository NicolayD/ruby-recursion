def fibs(n)
	return "Invalid number" if n < 1
	array = [0]
	(1..n-1).each do |num|
		if num == 1
			array.push 1
		elsif num
			array.push(array[num - 1] + array[num - 2])
		end
	end
	array
end


def fibs_rec(n,array=[0,1])
	return "Invalid number" if n < 1
	return 0 if n == 0 || (n == 1 && array.size == 2)
	return 1 if n == 1
	return array if n == 2 && array.size == 2
	if n > 2
		array << array[-2] + array[-1]
		fibs_rec(n-1,array)
	end
	array
end

p fibs(15)
p fibs_rec(15)
p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(3)
p fibs_rec(-2)


