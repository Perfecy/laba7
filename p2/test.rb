require 'minitest/autorun'
require './main.rb'
class Test < MiniTest::Unit::TestCase
  def setup
    @rand_sym = [*('A'..'Z'), *('a'..'z'), *('0'..'9')].sample(1).join
    @code = @rand_sym.ord
    @rand_font = [*('a'..'z')].sample(8).join
    @mysym = MySymbol.new(@rand_sym)
    @mynsym = MyNewSymbol.new(@rand_sym, @rand_font)
  end

  def test_instance1_for_roditel1
    assert_equal(true, @mysym.instance_of?(MySymbol))
  end

  def test_instance_for_roditel2
    assert_equal(false, @mysym.instance_of?(MyNewSymbol))
  end

  def test_obj1
    assert_equal(true, @mynsym.is_a?(MySymbol))
  end

  def test_obj2
    assert_equal(true, @mynsym.is_a?(MyNewSymbol))
  end

  def test_instance_for_potomok
    assert_equal(true, @mynsym.instance_of?(MyNewSymbol))
  end

  def test_logic1
    assert_equal(@rand_sym, @mysym.sym)
  end

  def test_logic2
    assert_equal(@code, @mysym.sym.ord)
  end

  def test_logic3
    assert_equal(@rand_sym, @mynsym.sym)
  end

  def test_logic4
    assert_equal(@mysym.sym.ord, @mynsym.sym.ord)
  end

  def test_logic5
    assert_equal(@rand_font, @mynsym.font)
  end
end
