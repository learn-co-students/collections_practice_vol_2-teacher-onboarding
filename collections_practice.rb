def begins_with_r array
  !array.any? {|item| item[0] != 'r'}
end

def contain_a array
  array.select { |item| item.include?("a") }
end

def first_wa array
  array.find { |item| item.match /^wa/}
end

def remove_non_strings array
  array.reject { |item| !item.is_a? String}
end

def count_elements array
  array.uniq.map { |item|
    matches = array.select { |item_to_match| item_to_match[:name] == item[:name] }
    item[:count] = matches.length
    item
  }
end

def merge_data data_one, data_two
    index = 0

    data_two[0].map { |key, value|
      merged_data = data_one[index].merge(value)
      index += 1
      merged_data
    }
end

def find_cool array
  array.select { |item| item[:temperature] == "cool" }
end

def organize_schools schools
  schools.reduce({}) { |accumulator, school|
    name = school[1][:location]
    accumulator[name] ||= []
    accumulator[name].push school[0]
    accumulator
  }
end
