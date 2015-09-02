module ArticleParser
  require 'json'
  require 'open-uri'
  require 'pry'

  BASE_URL = "https://www.reddit.com/r"
  LIMIT = 25

  def get_url(category)
    "#{BASE_URL}/#{category}.json?limit=#{LIMIT}"
  end

  def get_json(url)
    JSON.load(open(url))
  end

  def get_article_info(article_hash)
    order = LIMIT
    cloud = Cloud.create
    article_hash["data"]["children"].each do |hash|
      a = Article.new
      a.title = hash["data"]["title"]
      a.rank = hash["data"]["ups"]
      a.link = hash["data"]["url"]
      a.cloud_id = cloud.id
      a.order_num = order
      a.save
      order -= 1
    end
  end
end
