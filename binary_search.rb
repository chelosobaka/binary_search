module Binary
	def self.binary_search(arr, search_item)
		number_of_cycles = 0
		arr.sort!
		first_index = 0
		last_index = arr.length - 1

		while first_index <= last_index
			number_of_cycles += 1
			middle_index = (first_index + last_index) / 2
			middle_item = arr[middle_index]
			if middle_item == search_item
				return {search_item: middle_item, number_of_cycles: number_of_cycles}
			elsif middle_item > search_item
				last_index = middle_index - 1
			elsif middle_item < search_item
				first_index = middle_index + 1
			end
		end
	end
end

