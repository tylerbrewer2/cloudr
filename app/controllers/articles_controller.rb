class ArticlesController < ApplicationController
  include ArticleParser
  respond_to :html, :js

  def index
    if valid?
      @categories = Category.all
      category = params[:category][:id]
      category_id = Category.where(name: category).first.id
      url = get_url(category)
      hash = get_json(url)
      get_article_info(hash, category_id)
      @articles = Article.all.where("created_at >= ? AND category_id = ?",
                  Time.zone.now.beginning_of_day, category_id)
    else
      flash[:notice] = "Please choose a category"
      redirect_to root_path
    end
  end

  private

  def valid?
    !category = params[:category][:id].empty?
  end
end
