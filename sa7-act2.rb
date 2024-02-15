# 1
def tag(part, sentence)
  "<#{part}>#{sentence}</#{part}>"
end

puts tag :p, "This is a paragraph."
puts tag :h1, "This is a header."

puts '--'

# 2
numbers = [1, 2, 3, 4, 5]

numbers.each do |i|
  puts i * 2
end
new_numbers = numbers.map do |x|
  x * 3
end

puts "#{new_numbers}"

puts '--'

# 3
def safe_divide(num1, num2)
  begin
    return num1 / num2
  rescue ZeroDivisionError
    puts 'Error: Division by zero is not allowed.'
  end
end

puts safe_divide(10, 2)
puts safe_divide(5, 0)

puts '--'

# 4
content = File.read('input.txt')
content.reverse!
# File.open('output.txt', 'w') do |file|
#   file.puts content
# end

# 5
class InvalidAgeError < StandardError
end

def valid_age(age)
  raise InvalidAgeError, "Age is not valid" if age < 0
end

begin
  valid_age(-5)
  puts 'Age is valid'
rescue InvalidAgeError => x
  puts x.message
end

begin
  valid_age(23)
  puts 'Age is valid'
rescue InvalidAgeError => x
  puts x.message
end

puts '--'

# 6
student = {name: "Alice", age: 20, grade: "A"}

puts "Name: #{student[:name]}\nAge: #{student[:age]}\nGrade: #{student[:grade]}"

puts '--'

# 7
numbers = [1, 2, 3, 4, 5, 6]

puts numbers.select{|n| n.even?}

puts '--'

# 8
def warn_unless(boolean, message)
  unless boolean
    puts message
  end
end

warn_unless(true, "This is a warning.")
warn_unless(false, "This is a warning.")

puts '--'

# 9
def check_status
  puts $app_status
end
$app_status = "OK"
check_status
$app_status = "Error"
check_status

puts '--'

# 10
5.times do |o|
  puts "Ruby is fun!"
end

puts '--'

# 11
(1..5).each do |p|
  puts p
end

puts '--'

#12
File.open('sample.txt', 'r') do |file|
  3.times do |i|
    puts "#{i}: #{file.readline}"
  end
end

puts '--'

# 13 in greet.rb

# 14
words = ['Ruby', 'is', 'awesome']

new_words = words.map do |y|
  y.length
end

puts "#{new_words}"

puts '--'

# 15

def divide_numbers(num3, num4)
  begin
    return num3 / num4
  rescue ZeroDivisionError
    puts 'Cannot divide by Zero!'
  end
end

puts divide_numbers(10, 2)
puts divide_numbers(10, 0)
