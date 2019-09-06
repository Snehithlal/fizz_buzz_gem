require "Fizzbuzz"
class ErrorHandling

  def self.err_handler(*args)
    check_args_length(*args) && check_input(*args) && self.check_limit(*args)
  end

  def self.check_args_length(*args)
    raise "invalid number of arguments " unless args.length == 2
    true
  end

  def self.check_input(*args)
    low_limit, up_limit = Fizzbuzz.split_arguments(*args)
    unless(low_limit.is_a?(Integer) && up_limit.is_a?(Integer))
      raise "Enter valid input"
    end
    true
  end

  def self.check_limit(*args)
    low_limit, up_limit = Fizzbuzz.split_arguments(*args)
    raise "lower limit is greater than upper limit " if low_limit > up_limit
    true
  end

end
