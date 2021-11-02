puts "学生の人数を入力してください"
number = gets.to_f
if (number%1 == 0 and number.to_i.is_a? Integer)
  name_arr = []
  student_number_arr = []
  for i in 1...number+1 do
    puts "#{i}番目の学生の名前は何ですか?"
    name_arr.push(gets.strip)
    puts "#{i}番目の学生の番号は何ですか?"
    student_number_arr.push(gets.to_i())
  end

  i=0
  puts "----------名前------------"
  for i in (0...name_arr.size)
    puts "学生番号#{student_number_arr[i]} #{name_arr[i]}さんです"
    i += 1
  end
else puts "人数をもう一度お願いします"
end