puts '夏季オリンピック'
year = gets.to_i
if year < 1896 or year > 2021
  puts "#{year}年に夏季オリンピックはまだありません"
elsif year == 1916 or year == 1940 or year == 1944 or year == 2020
  puts "#{year}年に夏季オリンピックは開催されませんでした"
elsif year%4 == 0 or year == 2021
  puts "#{year}年に夏季オリンピックは開催されました"
else puts "#{year}年に夏季オリンピックヤーではありません"
end