x=6
def hello(arg)
    puts "hello"
    arg+=1
    puts arg
    yield
    puts "world"
    puts arg
end

hello(x) do
    puts "Работа yield"
    x+=1
end

data= ["sdfs sklduf map"]
data.map! { |l| l.reverse }
data.map!(&:reverse)
print(data)
