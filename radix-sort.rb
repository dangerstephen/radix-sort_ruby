def radix_sort(array)
# A array to hold my numbers while still getting sorted
	temp = []

	array.each do |n|
		if temp[n] == nil
			temp[n] = 1
		else
			temp[n] = temp[n] + 1
		end
	end

	temp.each_with_index do |n, i|
		if (n)
			n.times do
				puts i
			end
		end
	end
end

print radix_sort([300,843,1111,23,912])
print radix_sort([239,40,150,282,60,2,2,120])


# Margaret's Solution 
f radix_sort(arr)
  sort_arr = arr
  buckets = [[],[],[],[],[],[],[],[],[],[]]
  times = 0
  arr.each { |item| times = item.to_s.length if item.to_s.length > times }
  times.times do |idx|
    sort_arr.each do |num|
      bucket = -1 - idx
      bucket_num = num.to_s[bucket].to_i
      buckets[bucket_num] << num
    end
    sort_arr = buckets.flatten
    buckets = [[],[],[],[],[],[],[],[],[],[]]
  end
  sort_arr
end
