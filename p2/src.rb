require './main.rb'

print 'Enter your Symbol: '
s = gets
print 'Enter the font of the symbol: '
f = gets
print "Symbol:\n"
sym = MySymbol.new(s)
sym.put_mean
sym.put_code
print "Symbol with font: \n"
font = MyNewSymbol.new(s, f)
font.put_mean
font.put_code
font.put_font
gets
