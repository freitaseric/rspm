require "./libs.cr"
require "option_parser"
<<<<<<< HEAD

module Rspm
  option_parser = OptionParser.new do |parser|
=======
require "process"
require "uri"

module Rspm
  if Utils.get_os == Structs::OSType::Unknown
    STDERR.puts "Sorry, but your system doesn't supported yet."
    exit 1
  end

  parser = OptionParser.new do |parser|
>>>>>>> 0ed3201 (repository refining)
    parser.banner = Constants::NAME

    parser.on "-v", "--version", "Show program version" do
      puts "#{Constants::NAME} @ version #{Constants::VERSION}\nCopyright (C) Eric Freitas 2024"
      exit
    end

    parser.on "-h", "--help", "Show help message" do
      puts parser
      exit
    end
  end

<<<<<<< HEAD
  option_parser.parse

=======
  parser.parse
  
>>>>>>> 0ed3201 (repository refining)
  puts parser
end
