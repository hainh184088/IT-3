puts "学生の人数を入力してください＞３"
number = gets.to_i()
name_arr = []
for i in 1...number+1 do
  puts "#{i}番目䛾学生䛾名前䛿何ですか?"
  name_arr.push(gets.strip)
end

i=0
name_arr.each do |name|
  puts "#{i+1}番目䛾学生䛾名前は#{name}さんです"
  i += 1
end