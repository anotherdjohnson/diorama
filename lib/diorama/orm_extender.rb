module Diorama
  module Orm
    module ActiveRecord
      def stores_diorama_templates
        class_eval do
          validates :body, :presence => true
          validates :path, :presence => true
          validates :format, :inclusion => Mime::SET.symbols.map(&:to_s)
          validates :locale, :inclusion => I18n.available_locales.map(&:to_s), :allow_blank => true
          validates :handler, :inclusion => ActionView::Template::Handlers.extensions.map(&:to_s)
      
          after_save { Diorama::Resolver.instance.clear_cache }
      
          extend ClassMethods
        end
      end
    end

    module ClassMethods
      def find_model_templates(conditions = {})
        self.where(conditions)
      end
  
      def resolver(options = {})
        Diorama::Resolver.using self, options
      end
    end
  end
end

ActiveRecord::Base.extend Diorama::Orm::ActiveRecord