module Grape
  module Admin
    module Adapters
      class Mongoid
        def initialize(model_class)
          @model_class = model_class
        end

        def collection
          model_class.all.to_a
        end

        def attribute_names
          model_class.attribute_names
        end

        private

        attr_reader :model_class
      end
    end
  end
end
