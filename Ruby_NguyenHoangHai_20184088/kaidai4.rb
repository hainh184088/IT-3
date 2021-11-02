puts "学生の人数を入力してください"
number = gets.to_f
if (number%1 == 0 and number.to_i.is_a? Integer)
  name_arr = []
  for i in 1...number+1 do
    puts "#{i}番目の学生の名前は何ですか?"
    name_arr.push(gets.strip)
  end

  i=0
  puts "----------名前------------"
  name_arr.each do |name|
    puts "#{i+1}番目の学生の名前は#{name}さんです"
    i += 1
  end
else puts "人数をもう一度お願いします"
end