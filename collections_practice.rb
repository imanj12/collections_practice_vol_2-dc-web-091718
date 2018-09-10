def begins_with_r(array)
  array.each do |i|
    if i.slice(0) != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |i|
    if i.index("a") != nil
      new_array << i
    end
  end
  new_array
end

def first_wa(array)
  array.each do |i|
    if i.slice(0,2) == "wa"
      return i
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |i|
    if i.class == String
      new_array << i
    end
  end
  new_array
end

def count_elements(array)
  
  h = array.group_by(&:itself)
  h.map do |k, v| 
    k.merge(count: v.length)
  end

end

def merge_data(keys, data)

  data[0].values.map.with_index do |v, i| 
    keys[i].merge(v)
  end
    
end

def find_cool(cool)
  
  array = []
  cool.each do |obj|
    if obj[:temperature] == "cool"
      array << obj
    end
  end
  array
  
end

def organize_schools(schools)

  schools.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
  
end
