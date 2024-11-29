require "./lib.cr"
require "option_parser"

# TODO: Write documentation for `Rspm`
module Rspm
  parser = OptionParser.new do |parser|
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

  parser.parse

  puts parser
end
