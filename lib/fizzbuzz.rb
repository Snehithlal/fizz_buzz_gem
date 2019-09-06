
require './error_handling'
class Fizzbuzz
    def self.isfizz(*args)
     if (ErrorHandling.err_handler(*args))
      low_limit, up_limit = split_arguments(*args)
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

  def self.split_arguments(*args)
    low_limit = args[0]
    up_limit = args[1]
    return low_limit,up_limit
  end
end

Fizzbuzz.isfizz(3,10)
