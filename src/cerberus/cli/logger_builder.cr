module Cerberus::CLI
  class LoggerBuilder
    getter logger : Logger

    def self.logger(io)
      new(io).logger
    end

    def initialize(logger_io)
      Colorize.enabled = true
      @logger = Logger.new(logger_io)
      @logger.level = Logger::DEBUG
      @logger.progname = "Cerberus Generator"
      @logger.color = :light_cyan
      @logger.formatter = Logger::Formatter.new do |severity, datetime, progname, message, io|
        io << datetime.to_s("%I:%M:%S")
        io << " "
        io << progname
        io << " (#{severity})" if severity > Logger::DEBUG
        io << " "
        io << message
      end
    end
  end
end
