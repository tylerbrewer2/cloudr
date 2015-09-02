class Article < ActiveRecord::Base
  belongs_to :cloud
  validates  :title, uniqueness: true
end
