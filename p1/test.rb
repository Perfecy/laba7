require './main.rb'
require 'minitest/autorun'
require 'faker'
require 'securerandom'

# Test Class
class Test < MiniTest::Unit::TestCase
  def setup
    prepare_data_to_write!
    create_src_file
  end

  def test_logic
    files(FILE_PATH)
    assert_equal(File.read('H.txt'), @str)
  end

  def teardown
    remove_files
  end

  private

  def prepare_data_to_write!
    @data = Faker::GameOfThrones.quote
    @str = @data.split('a').first
  end

  def create_src_file
    File.open(FILE_PATH, 'w') { |f| f.write @data }
  end

  def remove_files
    File.delete FILE_PATH
    File.delete 'H.txt'
  end

  FILE_PATH = 'test.txt'.freeze
end
