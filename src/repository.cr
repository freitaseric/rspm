require "uri"
require "path"
require "http/client"
require "./package.cr"
require "./libs.cr"

module Repository
  class RepositoryEntry
    property name : String
    property url : URI
    property package_type : Package::PackageType

    def initialize(name : String, url : URI, package_type : Package::PackageType)
      @name = name
      @url = url
      @package_type = package_type
    end

    def fetch
      response = HTTP::Client.get @url

      puts response.body
    end
  end

  REPOSITORY_LIST_PATH = case Utils.get_os
                         when Structs::OSType::Linux
                           Path.posix "/opt/rspm/repo-list.txt"
                         when Structs::OSType::Darwin
                           Path.posix "/Library/Application Support/rspm/repo-list.txt"
                         when Structs::OSType::Windows
                           Path.windows ENV["ProgramFiles(x86)"] + "/rspm/repo-list.txt"
                         end
end
