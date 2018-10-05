def begins_with_r (array)
    condition_holder = false
    array.each do |word|
        if word.slice(0) != "r"
            condition_holder = false
        elsif word.slice(0) == "r"
            condition_holder = true 
        end 
    end
    return condition_holder
end

def contain_a (array)
    return array.grep /a/
end

def first_wa (array)
    result = nil
    array.each do |word|
        if word.slice(0) == "w" && word.slice(1) == "a"
            result = word
            break
        end
    end
    return result
end