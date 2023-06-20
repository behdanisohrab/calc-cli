while True:
    try:
        expr = input("Enter a calculation (e.g. 1 + 2): ").replace(" ", "")
        num1 = float(expr[0])
        op = expr[1]
        num2 = float(expr[2:])

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
