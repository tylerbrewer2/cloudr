class Article < ActiveRecord::Base
  belongs_to :category

  private

  validates  :title, uniqueness: true
end
