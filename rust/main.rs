use std::io::{self, Write};

fn main() {
    loop {
        print!("Enter a calculation (e.g. 1 + 2): ");
        io::stdout().flush().unwrap();

        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();

        let parts: Vec<&str> = input.trim().split(' ').collect();
        if parts.len() != 3 {
            eprintln!("Invalid input format");
            continue;
        }

        let left: f64 = match parts[0].parse() {
            Ok(num) => num,
            Err(_) => {
                eprintln!("Invalid number: {}", parts[0]);
                continue;
            }
        };

        let right: f64 = match parts[2].parse() {
            Ok(num) => num,
            Err(_) => {
                eprintln!("Invalid number: {}", parts[2]);
                continue;
            }
        };

        let result = match parts[1] {
            "+" => left + right,
            "-" => left - right,
            "*" => left * right,
            "/" => left / right,
            _ => {
                eprintln!("Invalid operator: {}", parts[1]);
                continue;
            }
        };

        println!("Result: {}", result);
    }
}
