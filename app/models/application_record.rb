class ApplicationRecord < ActiveRecord::Base
  #this is the base class for all models in the application
  #it inherits from ActiveRecord, which handles database interaction
  primary_abstract_class
end
