module Grape
  module Admin
    module Renderers
      class Base
        def render
          _render(layout_file) do
            _render(action_template)
          end
        end

        private

        def _render(template)
          template_path = File.join(template_root, template)
          ERB.new(File.read(template_path)).result(binding)
        end

        def layout_file
          "layout.html.erb"
        end

        def template_root
          File.join(File.dirname(__FILE__), "..", "templates")
        end

        def adapter_class
          Grape::Admin::Adapters::Mongoid
        end
      end
    end
  end
end
