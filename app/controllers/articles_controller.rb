class ArticlesController < ApplicationController
  include ArticleParser
  respond_to :html, :js

  def index
    @categories = Category.all
    category = params[:category][:id]
    category_id = Category.where(name: category).first.id
    url = get_url(category)
    hash = get_json(url)
    get_article_info(hash, category_id)
    @articles = Article.all.where("created_at >= ? AND category_id = ?",
                Time.zone.now.beginning_of_day, category_id)
  end
end
