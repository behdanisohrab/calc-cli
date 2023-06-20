while True:
    try:
        expr = input("Enter a calculation (e.g. 1 + 2): ")
        num1, op, num2 = expr.split()
        num1 = float(num1)
        num2 = float(num2)

        if op == "+":
            result = num1 + num2
        elif op == "-":
            result = num1 - num2
        elif op == "*":
            result = num1 * num2
        elif op == "/":
            if num2 == 0:
                print("Error: division by zero")
                continue
            result = num1 / num2
        else:
            print(f"Invalid operator: {op}")
            continue

        print(f"Result: {result}")

    except ValueError:
        print("Invalid input format")