class Article < ActiveRecord::Base
  validates_presence_of :body, :title
  validates_uniqueness_of :title
end
