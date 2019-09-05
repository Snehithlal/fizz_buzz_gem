class Fizzbuzz
  def self.isfizz(low_range, up_range)
     if (err_handler(low_range, up_range))
       low_range, up_range = up_range, low_range if low_range > up_range
      array = []
      (low_range..up_range).each do |number|
        value = ""
        value += "Fizz" if number % 3 == 0
        value += "Buzz" if number % 5 == 0
        value == "" ?  array << "#{number}" :  array << "#{value}"
      end
      puts array.join(",")
    else
      puts "plzz check input"
    end
  end

  def self.err_handler(low_limit, up_limit)
    low_limit.is_a?(Integer) && up_limit.is_a?(Integer) &&
     (low_limit > 0 && up_limit)
  end
end

Fizzbuzz.isfizz(2,1)
