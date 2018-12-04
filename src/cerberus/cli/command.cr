abstract class Command < Cli::Command
  def info(msg)
    Cerberus::CLI.logger.info msg, Class.name, :light_cyan
  end

  def error(msg)
    Cerberus::CLI.logger.error msg, Class.name, :red
  end
end
