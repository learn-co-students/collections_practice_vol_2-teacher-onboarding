def begins_with_r(array)
  if array.any? {|word| word[0] != "r"}
    return false
  else
    return true
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa (array)
  result = array.find {|word| word[0..1] == "wa"}
  print result
  return result
end

def remove_non_strings(array)
  array.keep_if {|element| element.class == String}
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    array.each do |counted_hash|
      if counted_hash[:name] == hash[:name]
        hash[:count] += 1
      end
    end
  end
  return array.uniq
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    name = key[:first_name]
    data.each do |person|
      if person[name]
        merged_person = person[name]
        merged_person[:first_name] = name
        merged_data << merged_person
      end
    end

  end
    merged_data
end

def find_cool(array)
  array.keep_if {|hash| hash[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location_table|
    location = location_table[:location]
    if organized_schools[location] #if the school's location has an entry, add it to that array
      organized_schools[location] << school
    else #else, set up a new location array and add the school to it
      organized_schools[location] = []
      organized_schools[location] << school
    end
  end
  organized_schools
end
