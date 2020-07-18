require_relative 'client'

class Info
    attr_reader :basic
    def initialize
        @basic = Client.new
        @basic.name = question("name").capitalize
        @basic.dob = question("dob")
        @basic.sex = question("sex")
        @basic.weight = question("weight")
        @basic.goal_weight = question("goal weight")
    end
    def question(value)
        puts ""
        puts "What is your #{value}?"
        gets.chomp
    end
    def weight_loss(value = @basic.weight)
        puts ""
        puts "How much weight have you lost ?"
        value = gets.chomp.to_i
        puts ""
        puts "Congrats on losing #{value}lbs!"
        puts ""
        puts "that puts you at #{@basic.weight.to_i - value}lbs"
        puts ""
        puts "you are #{value} pounds closer to your goal of #{@basic.goal_weight}lbs"
    end    
    def weight_gain(value = @basic.weight)
        puts ""
        puts "how much weight have you gained"
        value = gets.chomp.to_i
        puts ""
        puts "Sorry to hear that you are up #{value}"
        puts ""
        puts "That puts you at #{@basic.weight.to_i + value}lbs"
        puts ""
        puts "Hang in there you can still reach your goal of #{@basic.goal_weight}"
    end
    def to_s
        puts ""
        puts "Hello #{@basic.name} is the following info correct?"
        puts ""
       "dob: #{@basic.dob}, weight: #{@basic.weight}, sex: #{@basic.sex},goal-weight: #{@basic.goal_weight}" 
    end 
end
