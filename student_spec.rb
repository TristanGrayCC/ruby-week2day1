require ("./student.rb")
require "minitest/rg"
require "minitest/autorun"

class TestStudent < MiniTest::Test
  def test_name
    assert_equal("John", @bank_account.holder_name)
  end
end
