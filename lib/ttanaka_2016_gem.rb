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

    def prime(n)
      if n <= 1
        return false
      end
      num = 2
      n.times do
        if ((n % num) == 0 && (n != num))
          return false
        end
        num = num + 1
      end
      return true
    end

    def get_prime_list(n)
      ret = Array.new
      n = n + 1
      n.times do |i|
        if prime(i) == true
          ret.push(i)
        end
      end
      return ret
    end
  end
end
