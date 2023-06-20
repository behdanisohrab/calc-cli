import java.util.Scanner;

public class main {
    public static void main(String[] args) {
        float num1, num2, result;
        char op;

        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a calculation (e.g. 1 + 2): ");
        if (scanner.hasNextFloat()) {
            num1 = scanner.nextFloat();
            op = scanner.next().charAt(0);
            num2 = scanner.nextFloat();

            switch (op) {
                case '+':
                    result = num1 + num2;
                    break;
                case '-':
                    result = num1 - num2;
                    break;
                case '*':
                    result = num1 * num2;
                    break;
                case '/':
                    if (num2 == 0) {
                        System.out.println("Error: division by zero");
                        return;
                    }
                    result = num1 / num2;
                    break;
                default:
                    System.out.printf("Invalid operator: %c%n", op);
                    return;
            }

            System.out.printf("Result: %.2f%n", result);
        } else {
            System.out.println("Invalid input format");
        }

        scanner.close();
    }
}
