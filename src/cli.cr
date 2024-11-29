require "option_parser"
require "./lib.cr"

class CLI
  def parse(args : Array(String))
    OptionParser.parse args do |parser|
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
  end
end
