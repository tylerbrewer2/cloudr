class ArticlesController < ApplicationController
  def index
    @article_hash = Article.new.article('news')
  end
end
