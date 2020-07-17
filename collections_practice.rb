require "pry"

# your code goes here
def begins_with_r(array)
    r_begins_all = true
    array.each do |element|
        if element[0].downcase != "r"
            r_begins_all = false
        end
    end
    return r_begins_all
end

def contain_a(array)
    words_with_a_array = []
    array.each do |element|
        if element.include?("a")
            words_with_a_array << element
        end
    end
    return words_with_a_array
end

def first_wa(array)
    array.each do |element|
        if element[0..1] == "wa"
            return element
        end
    end
end

def remove_non_strings(array)
    string_array = []
    array.each do |element|
        if element.is_a?(String) == true
            string_array << element
        end
    end
    return string_array
end
            
[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements(array)
    array_hash_values = []
    array.each do |element|
        element.each do |key, value|
            array_hash_values << value
        end
    end
    array_hash_values = array_hash_values.sort.reverse
    array_value_count = []
    current_element = ""
    current_index = -1
    array_hash_values.each do |element|
        if current_element != element
            array_value_count << {:count => 1, :name => element}
            current_index += 1
        else
            array_value_count[current_index][:count] += 1
        end
        current_element = element
        # binding.pry
    end
    return array_value_count
end

# test_hash_array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# count_elements(test_hash_array)

def merge_data(keys, data)
    merged_data = keys
    merged_data.each do |hash|
        data[0].each do |name, traits|
            if hash[:first_name] == name
                traits.each do |trait, value|
                    hash[trait] = value
                end
            end
        end
    end
    return merged_data
end

def find_cool(hash_array)
    # binding.pry
    cool_hash_array = []
    hash_array.each do |hash|
        if hash[:temperature] == "cool"
            # binding.pry
            cool_hash_array << hash
        end
    end
    return cool_hash_array
end

def organize_schools(schools)
    school_location_hash = {}
    schools.each do |school, location_hash|
        if school_location_hash.include?(location_hash[:location]) == false
            school_location_hash[location_hash[:location]] = [school]
        else
            school_location_hash[location_hash[:location]] << school
        end
    end
    return school_location_hash
end

test_schools = {
    "flatiron school bk"=>{:location=>"NYC"},
    "flatiron school"=>{:location=>"NYC"},
    "dev boot camp"=>{:location=>"SF"},
    "dev boot camp chicago"=>{:location=>"Chicago"},
    "general assembly"=>{:location=>"NYC"},
    "Hack Reactor"=>{:location=>"SF"}
}

expected_output = {
    "Chicago"=>["dev boot camp chicago"], 
    "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], 
    "SF"=>["dev boot camp", "Hack Reactor"]
}