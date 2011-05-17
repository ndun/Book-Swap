class Book < ActiveRecord::Base
  validates_presence_of :Title, :Author
#  validates_presence_of :Author
end
