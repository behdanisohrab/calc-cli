import scala.io.StdIn.readLine

object Main {
  def main(args: Array[String]): Unit = {
    val num1 = readLine("Enter the first number: ").toFloat
    val num2 = readLine("Enter the second number: ").toFloat
    val op = readLine("Enter an operator (+, -, *, /): ")

    val result = op match {
      case "+" => num1 + num2
      case "-" => num1 - num2
      case "*" => num1 * num2
      case "/" => num1 / num2
      case _ => "Invalid operator"
    }

    println(s"Result: $result")
  }
}

