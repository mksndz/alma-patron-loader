require 'yaml'

module ConfigReader
  CONFIG_PATH = (__dir__ + '/../../config/').freeze
  # util for grabbing api keys
  class AlmaApi
    def self.api_key_for(inst_code)
      "#{inst_code}_abc123"
    end
  end
  # util for grabbing inst configs
  class Institution
    CONFIG_NAME = 'inst.yml'.freeze
    def self.config_for(inst_code)
      YAML.load_file(File.join(CONFIG_PATH, CONFIG_NAME))[inst_code]
    end
  end
end