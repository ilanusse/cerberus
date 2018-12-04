require "./cerberus/modules/*"
module Cerberus
  #
  # Module to be used in ORM models.
  #   Currently supporting:
  #     - Amber
  #       -  Granite
  module Model
    #
    # Loads all Cerberus modules listed.
    #   Currently supporting:
    #     :database_authenticatable, :validatable
    #
    macro cerberus(*modules)
      {% for m in modules %}
        include Cerberus::{{m.stringify[1..-1].camelcase.id}}
      {% end %}
    end
  end
end
