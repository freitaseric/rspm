require "./libs.cr"
require "option_parser"

module Rspm
  option_parser = OptionParser.new do |parser|
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

  option_parser.parse

  puts parser
end
