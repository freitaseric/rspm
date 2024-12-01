require "yaml"

module Utils
  def self.version
    yaml = File.open("shard.yml") do |file|
      YAML.parse(file)
    end

    yaml["version"].as_s
  end
end

module Constants
  NAME    = "Roughly Simple Package Manager(RSPM)"
  VERSION = Utils.version
end
