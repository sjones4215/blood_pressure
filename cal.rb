class Calculator
    attr_accessor :num1, :num2
    def initialize
    end
    
    def add
        puts "Enter two numbers to add"
        @num1 = gets.chomp.to_i
        @num2 = gets.chomp.to_i
        puts "The sum of #{@num1} and #{@num2} is #{@num1 + num2}"
    end
    def subtract
        puts "Enter two numbers to subtract."
        @num1 = gets.chomp.to_i
        @num2 = gets.chomp.to_i
        puts "The product of #{@num1} and #{@num2} is #{@num1 - num2}"
    end
end

calculation = Calculator.new
puts calculation.subtract