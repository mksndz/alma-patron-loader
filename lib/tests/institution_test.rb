require 'minitest/autorun'
require 'yaml'
require_relative '../objects/institution'

class InstitutionTest < MiniTest::Test
  def setup
    @college = Institution.new :college
    @university = Institution.new :university
  end

  def test_has_config
    assert_kind_of InstitutionConfig, @college.config
  end



end