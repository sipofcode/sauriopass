require 'minitest/autorun'
require 'sauriopass'

class StrongTest < Minitest::Test
  def test_that_it_works
    refute_nil Sauriopass.strong
  end
end
