require "ttanaka_2016_gem/version"

module Ttanaka2016Gem
  class Main 
    # display "Hello"
    def say_Hello
      print 'Hello'
    end

    # calculate GCD
    def culc_GCD(num1, num2)
      if num1 < num2
	temp = num1
	num1 = num2
	num2 = temp
      end

      while num2 > 0
	r = num1 % num2
	num1 = num2
	num2 = r
      end

      return num1
    end

    # calculate LCM
    def culc_LCM(num1, num2)
      num1 * num2 / culc_GCD(num1, num2)
    end
  end
end
