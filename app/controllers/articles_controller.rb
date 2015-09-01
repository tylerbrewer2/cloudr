class ArticlesController < ApplicationController
  include ArticleParser

  def index
    url = get_url(category)
    hash = get_json(url)
    @article = Article.new
    @article.get_article_info(hash)
  end

  def create
    render nothing: true
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    render nothing: true
  end
end
