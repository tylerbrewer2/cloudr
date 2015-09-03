class Article < ActiveRecord::Base
  belongs_to :cloud

  private

  validates  :title, uniqueness: true
end
