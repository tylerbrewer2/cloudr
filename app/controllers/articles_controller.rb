class ArticlesController < ApplicationController
  include ArticleParser
  respond_to :html, :js

  def index
    category = 'news'
    url = get_url(category)
    hash = get_json(url)
    get_article_info(hash)
    @articles = Article.all
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
