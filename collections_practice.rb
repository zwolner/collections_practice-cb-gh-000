
def sort_array_asc(int)
  int.sort do |a,b|
    a <=> b
  end
end

def sort_array_desc(int)
  int.sort do |a,b|
    b <=> a
  end
end

def sort_array_char_count(int)
  int.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements(int)
  num_2 = int[1]
  int[1] = int[2]
  int[2] = num_2
  return int
end

def reverse_array(int)
  count = 0
  reverse_int = []
  until count == int.length
    reverse_int[count] = int[int.length-count-1]
    count += 1
  end
  return reverse_int
end

def kesha_maker(int)
  int.map! do |x|
    split_word = x.split("")
    split_word[2] = "$"
    split_word.join
  end
end

def find_a(int)
  int.map! do |x|
    split_word = x.split("")
    if split_word[0] != "a"
      nil
    else
      x
    end
  end
  int.compact
end

def sum_array(int)
  int.reduce(:+)
end

def add_s(int)
  int.each_with_index.collect do |element, index|
    if index == 1
      element
    else
      element << "s"
    end
  end
end
