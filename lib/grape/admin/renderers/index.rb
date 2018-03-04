module Grape
  module Admin
    module Renderers
      class Index < Grape::Admin::Renderers::Base
        def initialize(model_class)
          @model_class = model_class
        end

        def model_collection
          adapter.collection
        end

        def model_attribute_names
          adapter.attribute_names
        end

        private

        def adapter
          @_adapter = adapter_class.new(model_class)
        end

        def action_template
          "index.html.erb"
        end

        attr_reader :model_class
      end
    end
  end
end
