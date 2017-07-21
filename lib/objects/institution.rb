require_relative '../objects/institution_config'
# object representing Institution, its info and config
class Institution
  attr_accessor :config
  def initialize(code)
    @config = InstitutionConfig.new(code.to_s)
  end

  def pull_sources
    case @config['source']
    when 'file'
      # do stuff
    else
      false
    end
  end

  def send_patrons(patrons)
    case @config['load_via']
    when 'api'
      # load via alma api
      patrons
    else
      false
    end
  end

end