require 'minitest/autorun'
require 'sauriopass'

class SimpleTest < Minitest::Test
  def test_that_it_works
    refute_nil Sauriopass.simple
  end
end
