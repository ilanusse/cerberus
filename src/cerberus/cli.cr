require "cli"
require "./version"
require "./cli/main_command"
Cerberus::CLI::MainCommand.run ARGV
