require "cli"
require "logger"

require "../version"
require "./logger_builder"
require "./templates/template"
require "./command"
require "./commands/*"

module Cerberus::CLI
  @@logger : Logger?

  def self.logger
    @@logger ||= LoggerBuilder.logger(STDOUT)
  end

  class MainCommand < ::Cli::Supercommand
    command_name "cerberus"
    version "Cerberus - v#{VERSION}"

    class Help
      title "\nCerberus - Command Line Interface"
      header <<-EOS
        The `cerberus generate` command creates a new model usable with Cerberus. 
        Usage:
        cerberus generate [class_name]
      EOS

      footer <<-EOS
      Example:
        cerberus generate User
        This generates scaffolding for a User class that's set up for Cerberus authentication.
      EOS
    end

    class Options
      version desc: "# Prints Cerberus version"
      help desc: "# Describe available commands and usages"
    end
  end
end
