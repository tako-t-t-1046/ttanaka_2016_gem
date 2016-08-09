require 'test_helper'

class Ttanaka2016GemTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ttanaka2016Gem::VERSION
  end

  def setup
    @main = ::Ttanaka2016Gem::Main.new
  end

  def test_GCD
    assert_equal(15,@Main.calc_GCD(30, 45), 'GCD_1')
    assert_equal(20,@Main.calc_GCD(20, 40), 'GCD_2')
    assert_equal( 1,@Main.calc_GCD(23, 17), 'GCD_3')
  end
  def test_LCM
    assert_equal( 12,@Main.calc_LCM( 3,  6), 'LCM_1')
    assert_equal( 40,@Main.calc_LCM(20, 40), 'LCM_2')
    assert_equal(391,@Main.calc_LCM(23, 17), 'LCM_3')
  end
  
end
