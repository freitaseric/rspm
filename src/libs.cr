require "yaml"

<<<<<<< HEAD
=======
module Structs
  enum OSType
    Linux
    Darwin
    Windows
    Unknown
  end

  enum ErrorStatus
    UnreachedRepository
  end
end

>>>>>>> 0ed3201 (repository refining)
module Utils
  def self.version
    yaml = File.open("shard.yml") do |file|
      YAML.parse(file)
    end

    yaml["version"].as_s
  end
<<<<<<< HEAD
=======

  def self.get_os
    Process.run("uname", ["-s"], shell: true, output: Process::Redirect::Pipe) do |process|
      output = process.output.gets_to_end.strip

      case output
      when "Linux"
        Structs::OSType::Linux
      when "Darwin"
        Structs::OSType::Darwin
      else
        Process.run("ver", shell: true, output: Process::Redirect::Pipe) do |ver_process|
          ver_output = ver_process.output.gets_to_end.strip

          if ver_output.includes?("Windows")
            Structs::OSType::Windows
          else
            Structs::OSType::Unknown
          end
        end
      end
    end
  end
>>>>>>> 0ed3201 (repository refining)
end

module Constants
  NAME    = "Roughly Simple Package Manager(RSPM)"
<<<<<<< HEAD
  VERSION = Utils.version
=======
  VERSION = Utils.get_version
>>>>>>> 0ed3201 (repository refining)
end
