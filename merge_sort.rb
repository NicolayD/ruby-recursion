def merge(a,b,result=[])
	while a.length > 0 && b.length > 0
		if a[0] < b[0]
			result.push a[0]
			a.delete_at(0)
		else
			result.push b[0]
			b.delete_at(0)
		end
	end

	while a.length > 0
		result.push a[0]
		a.delete_at(0)
	end

	while b.length > 0
		result.push b[0]
		b.delete_at(0)
	end
	result
end

def merge_sort(array)
	if array.length <= 1
		return array
	else
		a = array.slice!(0,array.length/2)
		b = array
		merge(merge_sort(a),merge_sort(b))
	end
end


sample = [7,10,1,0,46,33,91,8]
sample2 = [96,34,58,0,135,200,31,7,9]
p merge_sort(sample)
p merge_sort(sample2)