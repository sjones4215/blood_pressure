def time
    time = Time.new
    time.strftime("%A %d/%m/%y at %I:%M%p")
end

def basic_info(name,height,weight,hr,temp,sex,age=18,bp)
    puts "#{name.capitalize} is a #{age} year old #{sex} who is #{height} inches tall and weighs #{weight}, vitals are as follows #{bp},#{temp},#{hr}"
    puts "#{time}"
end

basic_info("shawn","6'2",264,88,98.4,"male",25,"147/88")