def sort_array_asc(arr)
  arr.sort!
end

def sort_array_desc(arr)
  arr.sort do |a, b|
    b <=> a 
  end
end

def sort_array_char_count(arr)
  arr.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(arr)
 arr[1], arr[2] = arr[2], arr[1]
 arr 
end

def reverse_array(arr)
  reversed = arr.reverse 
  reversed
end

def kesha_maker(arr)
  arr.each do |str|
    str[2] = "$"
  end
end

def find_a(arr)
  arr.select {|str| str.start_with? ("a")}
end

def sum_array(arr)
  arr.inject {|result, element| result + element}
end

def add_s(arr) #very ugly, but it works
  no_s = arr.slice(1)
  arr.collect! do |str|
    next if str == arr[1]
    str+"s" 
  end
  arr.insert(1, no_s).compact
end