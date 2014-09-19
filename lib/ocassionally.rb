module Ocassionally

  def __probability_function(rate)
    rand(100) < rate
  end

  def __get_rate_and_condition(args, default_rate, default_condition)
    rate      = default_rate
    condition = default_condition
    args.each do |arg|
      rate      = arg if [Fixnum, Float].include? arg.class
      condition = arg if [String, TrueClass, FalseClass, NilClass].include? arg.class
    end
    if Float == rate.class
      rate = (rate < 1) ? (rate * 100).to_i : rate.to_i
    end
    return rate, condition
  end

  def __ocassionally(rate, condition, block=nil)
    if __probability_function(rate) && ( String == condition.class ? eval(condition) : condition )
      block.call unless block.nil?
    end
  end

  def sometimes(*args, &block)
    rate, condition = __get_rate_and_condition(args, 50, true)
    __ocassionally(rate, condition, block)
  end

  def ocassionally(*args, &block)
    rate, condition = __get_rate_and_condition(args, 25, true)
    __ocassionally(rate, condition, block)
  end

  def seldom(*args, &block)
    rate, condition = __get_rate_and_condition(args, 5, true)
    __ocassionally(rate, condition, block)
  end

  def often(*args, &block)
    rate, condition = __get_rate_and_condition(args, 75, true)
    __ocassionally(rate, condition, block)
  end

  def very_often(*args, &block)
    rate, condition = __get_rate_and_condition(args, 95, true)
    __ocassionally(rate, condition, block)
  end

  def every_time(*args, &block)
    # defered contionals are ignored
    yield if block_given?
  end

  def never(*args, &block)
    # noop; but, there may be a side-effect if your conditional changes state
  end

end

