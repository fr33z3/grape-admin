module Grape
  module Admin
    class Web < Grape::API
      content_type :html, "text/html; charset=utf-8"
      format :html

    end
  end
end
