class Greeter 
    def initialize(name)
        @name = name.capitalize  
    end 
    def salute
        puts "Hello #{@name}!"
    end  
    def say_goodbye
        puts "Goodbye #{@name}!"
    end
end 

if ARGV.length > 0
    greeter = Greeter.new(ARGV.first)
    greeter.salute
    greeter.say_goodbye
else 
    puts "No arguments provided"
end 

myNewGreeter = Greeter.new("World")

def myFunction(a,b, c = 12)
    puts a + b + c
end  



myFunction(1,2)