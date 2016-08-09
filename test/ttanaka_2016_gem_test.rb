require 'test_helper'

class Ttanaka2016GemTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ttanaka2016Gem::VERSION
  end

  def setup
    @main = ::Ttanaka2016Gem::Main.new
  end

  def test_prime
    assert_equal false, @main.prime(-1), '-1 is not prime'
    assert_equal false, @main.prime(0), '0 is not prime'
    assert_equal false, @main.prime(1), '1 is not prime'
    assert_equal true, @main.prime(2), '2 is prime'
    assert_equal true, @main.prime(3), '3 is prime'
    assert_equal false, @main.prime(10), '10 is not prime'
    assert_equal true, @main.prime(11), '11 is prime'
    assert_equal false, @main.prime(10036), '10036 is not prime'
    assert_equal true, @main.prime(10037), '10037 is prime'
  end

  def test_get_prime_list
    assert_equal [], @main.get_prime_list(-1), 'not exist prime'
    assert_equal [], @main.get_prime_list(0), 'not exist prime'
    assert_equal [], @main.get_prime_list(1), 'not exist prime'
    assert_equal [2], @main.get_prime_list(2), 'exist prime'
    assert_equal [2, 3, 5, 7], @main.get_prime_list(10), 'exist prime'
    assert_equal [2, 3, 5, 7, 11], @main.get_prime_list(11), 'exist prime'
  end
end
