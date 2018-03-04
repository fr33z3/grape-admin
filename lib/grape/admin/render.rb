require 'erb'

module Grape
  module Admin
    module Render
      def render
        _render(layout_file) do
          _render(template)
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
        File.join(File.dirname(__FILE__), "templates")
      end
    end
  end
end
