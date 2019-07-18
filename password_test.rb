require './password'
require 'minitest/autorun'
require 'pry'

class PasswordTest < MiniTest::Test

  def test_uniq
    assert_equal Password.generate.split('').uniq.size, Password.generate.split('').size
  end  

  def test_length
    password = Password.generate(length: 10)
    assert_equal password.size, 10
  end
  
  def test_unique
    assert_equal Password.generate.split('').uniq.size, Password.generate.split('').size
  end  
  
  def test_length
    password = Password.generate(length: 10)
    assert_equal password.size, 10
  end
  
  def test_digit
    password = Password.generate(length: 10, digit: 2)
    assert_equal password.size, 10
    assert_match /[0-9]/, password, 2
  end

  def test_upper
    password = Password.generate(length: 10, upper: 2)
    assert_equal password.size, 10
    assert_match /[A-Z]/, password, 2
  end

  def test_punct
    password = Password.generate(length: 10, punct: 1)
    assert_equal password.size, 10
    assert_match /[#-.]/, password, 1
  end
end