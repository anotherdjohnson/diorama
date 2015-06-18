class DioramaTemplate < ActiveRecord::Base
  attr_accessible :body, :format, :handler, :locale, :partial, :path
end
