class ArticlesController < ApplicationController
  include ArticleParser

  def index
    category = 'news'
    url = get_url(category)
    hash = get_json(url)
    get_article_info(hash)
    @articles = Article.all
  end
end
