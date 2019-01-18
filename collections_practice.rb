# your code goes here
# your code goes here
def begins_with_r(arr)
    # is_true = true
    arr.each do |item|
      if !item.downcase.start_with?("r")
        return false
      end
    end
    true
  end
  
  def contain_a(arr)
    has_a = []
    arr.each do |item|
      if item.downcase.include?("a")
        has_a.push(item)
      end
    end
    return has_a
  end
  
  def first_wa(arr)
    arr.find do |word|
      word[0..1] == "wa"
    end
  end
  
  def remove_non_strings(arr)
    all_strings = []
    arr.each do |thing|
      if thing.class == String
        all_strings.push(thing)
      end
    end
    all_strings
  end
  
  def count_elements(arr)
    hash = arr.group_by(&:itself)
    hash.map{|k, v| k.merge(count: v.length)}
  end
  
  def merge_data(k, v)
    i = 0
    while i < k.length 
      v.each do |element|
        element.each do |ka, va|
          if k[i].has_value?(ka)
            k[i].merge!(va)
          end
        end
      end
      i += 1
    end
    return k
  end
  
  def find_cool(thing)
    thing.each_with_index do |temp, i|
      if thing[i][:temperature] == "cool"
        return [thing[i]]
      end
    end
  end
  
  def organize_schools(data)
    location_hash = {}
    data.collect {|k, v| location_hash[v[:location]] = []}
    location_hash.each do |k, v|
      data.each do |k1, v1|
        if k == v1[:location]
          then v << k1 
        end
      end
    end
    return location_hash
  end