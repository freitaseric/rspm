require "yaml"

module Utils
  def self.get_version
    yaml = File.open("shard.yml") do |file|
      YAML.parse(file)
    end

    yaml["version"].as_s
  end
end

module Constants
  NAME = "Roughly Simple Package Manager(RSPM)"
  VERSION = Utils.get_version()
end

