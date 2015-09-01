class Article < ActiveRecord::Base
  belongs_to :cloud
  include ArticleParser
end
