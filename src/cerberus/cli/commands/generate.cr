module Cerberus::CLI
  class_property color = true

  class MainCommand < ::Cli::Supercommand
    command "g", aliased: "generate"

    class Generate < Command
      class Options
        arg "framework", desc: "amber, lucky", required: true
        arg "name", desc: "name of resource", required: true
        arg_array "fields", desc: "user:reference name:string body:text age:integer published:bool"
        help
      end

      class Help
        header "Generates authenticatable models based on templates"
        caption "# Generates authenticatable models based on templates"
      end

      def run
        template = Template.new(args.name, ".", args.fields)
        template.generate(args.framework)
      end

      class Help
        caption "# Generate Cerberus authenticatable models"
      end
    end
  end
end
