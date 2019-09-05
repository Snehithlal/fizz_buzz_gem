class Fizzbuzz
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

  def self.err_handler(args)
    raise "invalid number of arguments " unless args.length == 2
    low_limit = args[0]
    up_limit = args[1]
    unless(low_limit.is_a?(Integer) && up_limit.is_a?(Integer))
      raise "Enter valid input"
    end
    raise "lower limit is greater than upper limit " if low_limit > up_limit
     true
  end

end

Fizzbuzz.isfizz(3,10,22)
