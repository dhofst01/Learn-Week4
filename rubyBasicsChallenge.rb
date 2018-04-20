2+2
4-2
3*3
4/2

my_fav_num = 26
my_fav_num / 2
someones_fav = 13
someones_fav = 7
my_fav_num - someones_fav
my_fav_num * 26

blah = [1,2,3,4,8,10]
"blah".reverse
blah.include?(1)
a = 1
b =2
puts "The number #{a} is less than #{a + b}"

arrayC = ['Ridgemont High', 'Star Wars', 'Rouge One', '5th Element', 'Lock Stock and tow smoking barrels','Den of thieves','10','Oceans 11','training day','Resivor Dogs']

arrayD = arrayD[arrayC[2], arrayC[4]]

arrayD << arrayC[2] << arrayC[4] << arrayC[8]

arrayC.slice(2,5)



i = 1
x = 20
 x.times do
   puts "#{i} + Buzz"
   i = i + 1
end

i = 20
x = 1
 i.times do
   puts i
   i = i - 1
end




numArrayRange = (1..10)
numArray = numArrayRange.to_a
puts = "Please enter a number between 1 & 10!"
num = gets.chomp.to_i
if numArray.member?(num)
  puts "#{num} is a number between 1 & 10!"
else
  puts "#{num} is not between 1 &10"
end




i = 0
x = 100
 x.times do
 if i%5.0 == 0 && i%3.0 == 0
  puts "#{i} fizzbuzz"
  i = i + 1
  elsif i%3.0 == 0
    puts "#{i} fizz"
    i = i + 1
  elsif i%5.0 == 0
   puts "#{i} buzz"
   i = i + 1
  else
   puts i
   i = i + 1
 end
end
