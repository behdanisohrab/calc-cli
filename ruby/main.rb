num1 = 0.0
num2 = 0.0
result = 0.0
op = ""

print "Enter a calculation (e.g. 1 + 2): "
if (input = gets.to_s) =~ /(\S+)\s*([+*\-\/])\s*(\S+)/
  num1, op, num2 = $1.to_f, $2.chars.first, $3.to_f

  case op
  when '+'
    result = num1 + num2
  when '-'
    result = num1 - num2
  when '*'
    result = num1 * num2
  when '/'
    if num2 == 0.0
      puts "Error: division by zero"
      exit(1)
    else
      result = num1 / num2
    end
  else
    puts "Invalid operator: #{op}"
    exit(1)
  end

  puts "Result: #{result}"
  exit(0)
else
  puts "Invalid input format"
  exit(1)
end
