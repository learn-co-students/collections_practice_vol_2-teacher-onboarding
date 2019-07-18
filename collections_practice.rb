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
    keys.each do |hash|
        data.each do |name|
            binding.pry
            if name == hash[:first_name]
                name.each do |key, value|
                    merged_data[key] = value
                    
                end
            end
        end
    end
    return merged_data
end
