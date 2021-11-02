puts "数字を入力してください"
number = gets.to_f
if (number%1 == 0 and number.to_i.is_a? Integer)
  if number%2 == 0 and number%7 == 0 
    puts "14の倍数です" 
  elif number%2 == 0 
    puts "２の倍数です"
  elif number%7 == 0
    puts "7の倍数です"
  else puts "２の倍数でも7の倍数でもありません"
  end
else puts "OPTION"
end
