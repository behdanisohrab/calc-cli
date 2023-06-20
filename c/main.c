#include <stdio.h>

int main() {
    float num1, num2, result;
    char op;

    printf("Enter a calculation (e.g. 1 + 2): ");
    if (scanf("%f %c %f", &num1, &op, &num2) != 3) {
        printf("Invalid input format\n");
        return 1;
    }

    switch(op) {
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
                printf("Error: division by zero\n");
                return 1;
            }
            result = num1 / num2;
            break;
        default:
            printf("Invalid operator: %c\n", op);
            return 1;
    }

    printf("Result: %f\n", result);

    return 0;
}