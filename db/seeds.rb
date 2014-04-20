# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lines = File.readlines("lib/Phoenix2012_10.txt")
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

section_array.pop

section_array.each do |number, title|
	Section.create(section_title: title, section_number: number.to_i)
end

hash.each_pair do |key, value|
	hash[key].each do |number, title|
		Chapter.create(chapter_title: title, 
			chapter_number: number, 
			section_id: Section.find_by(section_number: key).id)
	end
end
