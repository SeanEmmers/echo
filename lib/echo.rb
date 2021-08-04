class Echo

  attr_accessor :input

  def initialize
    @input
  end

  def get_string
    puts 'Say something:'
    @input = $stdin.gets.chomp
  end

  def say_something
    loop do
      get_string
      break if break?
      puts "#{date_and_time} #{output(@input)}"
    end
    puts 'Goodbye!'
  end

  def output(input)
    "You said: #{input}!"
  end

  def break? 
    @input == 'exit'
  end

  def date_and_time
    date = Time.now.strftime('%d-%m-%Y')
    time = Time.now.strftime('%H:%M')
    "#{date} | #{time} | "
  end

end



