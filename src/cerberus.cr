require "./cerberus/modules/database_authenticatable"
module Cerberus
  #
  # Loads all Cerberus modules listed
  #
  macro cerberus(*modules)
    {% for m in modules %}
      include Cerberus::{{m.stringify[1..-1].camelcase.id}}
    {% end %}
  end
end
