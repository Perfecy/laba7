# MySymbol class
class MySymbol
  attr_reader :sym
  def initialize(sym)
    @sym = sym.to_s
  end

  def put_mean
    print 'Ur Symbol: '
    puts @sym
  end

  def put_code
    print 'Symbol Code: '
    puts @sym.ord
  end
end
# MyNewSymbol class
class MyNewSymbol < MySymbol
  attr_reader :font
  def initialize(sym, font)
    super(sym)
    @font = font.to_s
  end
  def put_mean
    super
  end

  def put_code
    super
  end


  def put_font
    print 'Symbol Font: '
    puts @font
  end
end
