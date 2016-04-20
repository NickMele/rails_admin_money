require "rails_admin_money/engine"

module RailsAdminMoney; end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Money < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :pretty_value do
            formatted_value.nil? ? ' - ' : formatted_value.format
          end
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  model = parent.abstract_model.model

  return false unless model.respond_to? :monetized_attributes

  method_name = model.monetized_attributes.invert[properties.name.to_s]

  if method_name.present?
    fields << RailsAdmin::Config::Fields::Types::Money.new(parent, method_name.to_sym, properties)
    true
  else
    false
  end
end
