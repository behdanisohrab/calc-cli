#include <iostream>
#include <string>

using namespace std;

int main() {
    double num1, num2, result;
    char op;

    while (true) {
        cout << "Enter a calculation (e.g. 1 + 2): ";
        if (!(cin >> num1 >> op >> num2)) {
            cerr << "Invalid input format" << endl;
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
            continue;
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
                if(num2 == 0) {
                    cerr << "Error: division by zero" << endl;
                    continue;
                }
                result = num1 / num2;
                break;
            default:
                cerr << "Invalid operator: " << op << endl;
                continue;
        }

        cout << "Result: " << result << endl;
    }

    return 0;
}
