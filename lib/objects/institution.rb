require_relative '../modules/config_reader'

# object representing Institution, its info and config
class Institution
  include ConfigReader

  def initialize(code)
    @config = ConfigReader::Institution.config_for code
  end

end