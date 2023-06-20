const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter a calculation (e.g. 1 + 2): ', (input) => {
  const regex = /(\S+)\s*([+*\-\/])\s*(\S+)/;
  const match = input.match(regex);

  if (match) {
    const num1 = parseFloat(match[1]);
    const op = match[2];
    const num2 = parseFloat(match[3]);

    let result;

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
        if (num2 === 0) {
          console.log('Error: division by zero');
          process.exit(1);
        }
        result = num1 / num2;
        break;
      default:
        console.log(`Invalid operator: ${op}`);
        process.exit(1);
    }

    console.log(`Result: ${result}`);
    process.exit(0);
  } else {
    console.log('Invalid input format');
    process.exit(1);
  }
});

