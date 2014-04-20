lines = File.readlines("Phoenix2012_10.txt")
section_array = []
lines.each_with_index do |line, num|
  if line.include?('SECTION')
      line_num = __LINE__
      line.sub! 'SECTION', ''
      line.sub! ':', ','
      line.sub! '\n', ''
      line = line.split(',')
      line << num
      section_array << line
    end
end
section_array.each do |x, y|
  x.gsub!(/^\W/,'')
  x = x.to_i
  y.gsub!(/^\W/,'')
  y.sub! "\n", ''
end
section_array << ["nil","nil",36]

index = 0
hash = Hash.new
section_array.each do |number, title, line_no|
  unless title == "nil"
    section_lines = (line_no+1..section_array[index+1][2]-1)
    array = []
    section_lines.each do |x|
      hash[number] = array << lines[x].split(',')
      #puts lines[x]
    end
  end
  index = index + 1
end

puts hash
section_array.pop
