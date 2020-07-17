def begins_with_r(tools)
	return tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(elements)
	return elements.find_all {|element| element.include?("a")}
end

def first_wa(elements)
	# apparently "elements" might contain symbols as well as strings
	# since only strings can start with "wa", remove the non-strings first
	return remove_non_strings(elements).find {|element| element.start_with?("wa")}
end

def remove_non_strings(array)
	return array.find_all {|item| item.class == String}
end

def count_elements(array)
	# array contains hashes
	# this function counts the unique key-value pairs in the hashes

	# my solution is to build a hash with key-value pairs as the keys,
	# and counts as the values, then convert each of the key-value pairs
	# in that counter hash into two keys (the key from the key-value pair,
	# and :count) and two values (the value from the key-value pair, and the
	# count of times it appears)
	
	# in this hash, each key is a hash containing a single key-value pair
	# from the input array, and each value is a count
	pair_count_hash = {}

	# loop through all of the hashes in the array and all key-value pairs
	# within them (example code always has just 1 pair per hash, but this
	# is more generic)
	array.each do |hash|
		hash.each do |key, value|
			# add key-value pair to counter hash
			key_value_pair = {key => value}
			if pair_count_hash.has_key?(key_value_pair)
				pair_count_hash[key_value_pair] += 1
			else
				pair_count_hash[key_value_pair] = 1
			end
		end
	end

	# loop through counter hash and add hashes to result array
	result_array = []
	pair_count_hash.each do |key, count|
		key[:count] = count
		result_array.push(key)
	end

	return result_array

	# this seems like overkill, but the test spec doesn't actually want
	# the count of unique "elements" (i.e. hashes) in the array, it wants
	# the count of unique key-value pairs within those elements (hashes)

	# (it's entirely possible that there's some secret about Ruby hashes that
	# would significantly simplify this, but I'm treating this like a typical
	# data collection/cleanup task, where the input format is really annoying
	# so you pack everything into a dictionary then unpack it so it can be used)
end

def merge_data(keys, data)
	# merging two hashes, where the values of "keys" are keys to nested hashes in "data"

	merged_data = []

	# "keys" and "data" are both lists of hashes, so it takes 4 lines to loop
	keys.each do |key_hash|
		key_hash.each do |key_key, key_value|
			data.each do |data_hash|
				data_hash.each do |data_key, data_value|
					if key_value == data_key
						data_value[key_key] = key_value
						merged_data.push(data_value)
					end
				end
			end
		end
	end

	return merged_data
end

def find_cool(array)
	# finds all hashes containing the value "cool"
	
	result_array = []

	array.each do |hash|
		if hash.values.include?("cool")
			result_array.push(hash)
		end
	end

	return result_array
end

def organize_schools(schools)
	# basically inverting keys and values. initially keys are names of schools
	# and values are locations. this function makes a hash where locations are
	# keys and lists of schools are values.

	result_hash = {}

	schools.each do |school, location_hash|
		location = location_hash[:location]
		if result_hash.has_key?(location)
			result_hash[location].push(school)
		else
			result_hash[location] = [school]
		end
	end

	return result_hash

	# (the simplicity of this one really makes me think I'm overthinking
	# Question 5 #count_elements...)

end