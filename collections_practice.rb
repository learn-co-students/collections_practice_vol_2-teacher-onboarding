# your code goes here
def begins_with_r(array)
    array.each do |item|
         if item[0] != 'r'
        return false 
        end
        end
    return true
    end 

def contain_a(array)
    results = []
    array.each do |item|
        if item.include?('a')
            results.push(item)
        end
    end
    results
end 

def first_wa(array)
    array.each do |item|
        if item[0] == 'w' and item[1] == 'a'
            return item
        end
    end

end 

def remove_non_strings(array)
    results = []
    array.each do |item|
    if item.is_a?(String)
    results.push(item)
    end
    end
    results
  end 

  def count_elements(array)
    array.each do |map|
      map[:count] = 0
      name = map[:name]
      array.each do |arrItem|
        if arrItem[:name] == name
          map[:count] += 1
        end
      end
    end.uniq
  end

  def merge_data(keys, values)
    container = []
    keys.each do |person_name|
      name = person_name[:first_name]
      values.each do |person_data|
        if person_data[name]
          merged_person = person_data[name]
          merged_person[:first_name] = name
          container << merged_person
        end
      end
    end
    container
  end

  def find_cool(array)
    container = []
    array.each do |element|
      container << element if element[:temperature] == "cool" 
    end
    container
  end
  
  def organize_schools(schools)
    organized_schools = {}
    schools.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
  end