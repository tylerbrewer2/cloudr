module ArticleParser
  require 'json'
  require 'open-uri'

  BASE_URL = "https://www.reddit.com/r"
  LIMIT = 25

  def get_url(category)
    "#{BASE_URL}/#{category}.json?limit=#{LIMIT}"
  end

  def get_json(url)
    JSON.load(open(url))
  end

  def get_article_info(article_hash)
    article_hash["data"]["children"][1]["data"].each do |k, v|
      # need nested iteration
      title = k["title"]
      rank = a["data"]["ups"]
      link = a["data"]["url"]
      comment_link = a["data"]["permalink"]
      num_comments = a["data"]["num_comments"]
      domain = a["data"]["domain"]
      utc = a["data"]["created"]
    end
  end
  # def article(category)
  #   url = get_url(category)
  #   hash = get_json(url)
  #   get_article_info(hash)
  # end
end
