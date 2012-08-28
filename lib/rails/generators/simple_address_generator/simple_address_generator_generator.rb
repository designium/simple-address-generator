module SimpleAddressGenerator
  module Generators
    class SimpleAddressGeneratorGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_address_model
        generate("model", "address address_line_1:string address_line_2:string city:string state:string postal_code:string country:string telephone_number:string latitude:float longitude:float category_id:integer")
        rake("db:migrate")
      end

      def generate_everything_else
        directory "gmaps4rails", "app/assets/javascripts/gmaps4rails/"
        directory "addresses", "app/views/addresses/"
        directory "stylesheets", "app/assets/stylesheets/"
        copy_file "addresses_controller.rb", "app/controllers/addresses_controller.rb"
        copy_file "address.rb", "app/models/address.rb"
        copy_file "icon-1.png", "app/assets/images/icon-1.png"
      end

      def insert_code_application
        inject_into_file "app/views/layouts/application.html.erb", after: "<%= yield %>"  do
          a = "\n\n <%= yield :scripts %>"
          a
        end
      end

      def insert_routes
        route("resources :addresses")
      end

      def add_gems
        gem("geocoder")
        gem("gmaps4rails")
      end

    end
  end
end