require_relative '../modules/config_reader'

class InstitutionConfig
  include ConfigReader
  attr_reader :source, :sources, :load_via, :load_as
  def initialize(code)
    config_hash = ConfigReader::Institution.config_for code
    @source = config_hash[:source]
    @sources = config_hash[:sources]
    @load_via = config_hash[:load_via]
    @load_as = config_hash[:load_as]
  end
end