require 'minitest/autorun'
require 'yaml'
require_relative '../objects/institution_config'

# simple test for institution configs
class InstitutionConfigTest < MiniTest::Test
  def setup
    @college_config = InstitutionConfig.new('college')
    @university_config = InstitutionConfig.new('university')
  end

  def test_has_source_methods
    assert_equal :file, @college_config.source
    assert_equal :file, @university_config.source
  end
end