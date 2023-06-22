import strutils

proc calculate(op: char, a, b: float): float =
  case op
  of '+': result = a + b
  of '-': result = a - b
  of '*': result = a * b
  of '/': result = a / b
  else: raise newException(Exception, "Invalid operator")

echo "Enter an expression (e.g. 2 + 3): "
let input = split(readLine(stdin), ' ')
let a = parseFloat(input[0])
let op = input[1][0]
let b = parseFloat(input[2])

var result: float
try:
  result = calculate(op, a, b)
except:
  echo "Error: ", getCurrentExceptionMsg()

echo "Result: ", result
