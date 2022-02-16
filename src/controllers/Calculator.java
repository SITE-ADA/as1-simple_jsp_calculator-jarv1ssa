package controllers;

public class Calculator {
  private int firstOperand, secondOperand;
  private double result;
  private String operation;

  public Calculator(int firstOperand, int secondOperand) {
    this.firstOperand = firstOperand;
    this.secondOperand = secondOperand;
  }

  public void setOperation(String operation) {
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
        result = (double) this.firstOperand / this.secondOperand;
        break;

      default:
        throw new Error("Invalid operation code");
    }

    return this.result;
  }
}