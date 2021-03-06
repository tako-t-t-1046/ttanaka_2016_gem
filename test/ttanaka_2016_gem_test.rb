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

  def test_GCD
    assert_equal(15, @main.calc_GCD(30, 45), 'GCD_1')
    assert_equal(20, @main.calc_GCD(20, 40), 'GCD_2')
    assert_equal( 1, @main.calc_GCD(23, 17), 'GCD_3')
  end

  def test_LCM
    assert_equal(  6, @main.calc_LCM( 3,  6), 'LCM_1')
    assert_equal(120, @main.calc_LCM(30, 40), 'LCM_2')
    assert_equal(391, @main.calc_LCM(23, 17), 'LCM_3')
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
