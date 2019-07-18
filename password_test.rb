require './password'
require 'minitest/autorun'
require 'pry'

class PasswordTest < MiniTest::Test
	def test_unique
 	    assert_equal Password.generate.split('').uniq.size, Password.generate.split('').size
    end 
    
    def test_length
        assert_equal Password.generate.size, length
    end

    def test_digit
        assert_match (/[0-9]/), Password.generate, (digit)
    end	

    def test_upper
        assert_match (/[A-Z]/), Password.generate
    end

    def test_punct
      assert_match (/[#-.]/), Password.generate
    end

    def test_alpha 
    	assert_match (/[a-z]/), Password.generate, (length-upper-punct-digit)
    end 
end