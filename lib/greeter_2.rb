class Greeter_2
  def greet(name = Kernel.gets.chomp)
    puts "What is your name?"
    @name = name
    puts "Hello, #{@name}"
  end
end
