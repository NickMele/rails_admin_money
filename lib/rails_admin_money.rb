require "rails_admin_money/engine"

module RailsAdminMoney
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Money < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :money
    fields << RailsAdmin::Config::Fields::Types::Money.new(parent, properties[:name], properties)
    true
  else
    false
  end
end


