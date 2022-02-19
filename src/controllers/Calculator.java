package controllers;

public class Calculator {
  private int firstOperand, secondOperand;
  private String operation;
  private double result;

  public Calculator(int firstOperand, int secondOperand, String operation) {
    this.firstOperand = firstOperand;
    this.secondOperand = secondOperand;
    this.operation = operation;
  }

  public double compute() {
    switch (this.operation) {
      case "add":
        result = this.firstOperand + this.secondOperand;
        break;
      
      case "sub":
        result = this.firstOperand - this.secondOperand;
        break;

      case "mul":
        result = this.firstOperand * this.secondOperand;
        break;

      case "div":
        if (this.secondOperand == 0) {
          throw new ArithmeticException("Division by zero");
        }
        
        result = (double) this.firstOperand / this.secondOperand;
        break;

      default:
        throw new Error("Invalid operation code");
    }

    return this.result;
  }
}