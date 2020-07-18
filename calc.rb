class Question
    attr_reader :question
    def initialize
        @question = Patient.new
        @question.name = info("name").capitalize
        @question.age = info("age")
        @question.sex = info("sex")
        @question.weight = info("weight")
        @question.height = info("height")
        @question.bp = info("blood pressure")
        @question.hr = info("heart rate")
        @question.o2 = info("Oxygen saturation")
        @question.temp = info("Temperature")
    end
    def info(value)
        puts "What is the patients #{value}"
        gets.chomp
    end
end

class Patient
    attr_accessor :name, :age, :sex, :weight, :height, :bp, :hr, :o2, :temp
    def initialize
        
    end
    
    def to_s
    puts "Patient is #{@name} patient is a #{@sex}, they weigh #{@weight}, they are #{@height} feet tall"
    puts "Vitals are as follows temp: #{@temp} hr: #{@hr} 02 saturation: #{@o2} temp: #{@temp}"
    end
end

form = Question.new
puts form.question