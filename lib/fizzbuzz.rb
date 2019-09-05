
require './error_handling'
class Fizzbuzz < ErrorHandling
  def self.isfizz(*args)
     if (err_handler(args))
       low_limit = args[0]
       up_limit = args[1]
       array = []
       (low_limit..up_limit).each do |number|
          value = ""
          value += "Fizz" if number % 3 == 0
          value += "Buzz" if number % 5 == 0
          value == "" ?  array << "#{number}" :  array << "#{value}"
        end
      puts array.join(",")
    end
  end
end

Fizzbuzz.isfizz(3,10)
