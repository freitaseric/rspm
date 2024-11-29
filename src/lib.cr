require "yaml"

def get_version
  yaml = File.open("shard.yml") do |file|
    YAML.parse(file)
  end

  yaml["version"].as_s
end

module Constants
  NAME = "Roughly Simple Package Manager(RSPM)"
  VERSION = get_version
end

