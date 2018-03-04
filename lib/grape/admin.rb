require "grape/admin/version"
require "grape"

module Grape
  module Admin
    autoload :Web, "grape/admin/web"
    autoload :Adapters, "grape/admin/adapters"
    autoload :Renderers, "grape/admin/renderers"

    def self.register(model_class)
      Grape::Admin::Web.send(:get, "/#{model_class.name.downcase.pluralize}") do
        Grape::Admin::Renderers::Index.new(model_class).render
      end
    end
  end
end
