class TopController < ApplicationController

  def index
    search_url = "http://news.tennis365.net/news/today/"

    agent = Mechanize.new
    page = agent.get(search_url)
    @elements = page.search('#cntAreaL02 li a')
    @favorite_player = ["フェデラー","ジョコビッチ","ジョコ","ナダル"]
  end

end
