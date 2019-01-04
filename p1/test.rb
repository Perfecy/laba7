require './main.rb'
require 'minitest/autorun'

# Test Class
class Test < MiniTest::Unit::TestCase
  def setup
    k=0
    @str = ''
    File.open(FILE_PATH, 'w') do |f|
      (0..rand(20)).each do
        line = (0..rand(20)).map { rand(97..122).chr }.join + "\n"
        f.write(line)
        line.each_char do |i|
          if i!='a' and k==0;
            @str << i
          else
            k+=1
          end
        end
      end
    end
files(FILE_PATH)
  end

  def test_1

    assert_equal(File.read('H.txt'), @str)
  end

  def teardown
   File.delete(FILE_PATH)
  end

    private

     FILE_PATH= 'test.txt'

end
