require "cli"
require "./version"
#require "./exceptions/*"
#require "./environment"
require "./cli/main_command"

Cerberus::CLI::MainCommand.run ARGV
