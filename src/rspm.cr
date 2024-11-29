require "./cli.cr"

# TODO: Write documentation for `Rspm`
module Rspm
  cli = CLI.new
  cli.parse(ARGV)
end
