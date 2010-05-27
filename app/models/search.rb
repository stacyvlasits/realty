class Search < ActiveRecord::Base
  validates_presence_of :search
  validates_presence_of :title
end
