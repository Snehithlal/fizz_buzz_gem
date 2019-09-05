class ErrorHandling

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
