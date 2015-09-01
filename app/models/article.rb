class Article < ActiveRecord::Base
  require 'json'
  require 'open-uri'
  require 'pry'

  BASE_URL = "https://www.reddit.com/r"

  def get_url(category)
    "#{BASE_URL}/#{category}/.json"
  end

  def get_json(url)
    JSON.load(open(url))
  end

  def get_article_info(article_hash)
    article_hash["data"]["children"].each do |a|
      title = a["data"]["title"]
      rank = a["data"]["ups"]
      link = a["data"]["url"]
      comment_link = a["data"]["permalink"]
      num_comments = a["data"]["num_comments"]
      domain = a["data"]["domain"]
      created_utc = (Time.at(a["data"]["created"])).strftime("Posted " +
                     "on %A %-m/%d/%Y at %-l:%M%P")
    end
  end

  def article(category)
    url = get_url(category)
    hash = get_json(url)
    get_article_info(hash)
  end
end
