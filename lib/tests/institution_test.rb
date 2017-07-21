require 'minitest/autorun'
require 'yaml'
require_relative '../objects/institution'

class InstitutionTest < MiniTest::Test
  def setup
    @college = Institution.new :college
    @university = Institution.new :university
  end

  def test_loads
    assert @college
    assert @university
  end
end