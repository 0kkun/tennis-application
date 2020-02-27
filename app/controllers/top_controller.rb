class TopController < ApplicationController

  def index
    # --------------大会日程のスクレイピング--------------------
    news_search_url = "http://news.tennis365.net/news/today/"

    # agentという変数にMechanizeクラスのインスタンスを代入。
    news_agent = Mechanize.new
    # pageという変数にsearch_urlのウェブサイトからHTML情報をgetというメソッドで、
    # Mechanizeインスタンスから抜き出したものを代入
    news_page = news_agent.get(news_search_url)

    # @elementsというクラス変数に、search_urlのトップページにあるタグを検索
    # 要素を配列形式で入れている。ビューに渡す用。
    @news_elements = news_page.search('#cntAreaL02 li a')

    # --------------大会日程のスクレイピング--------------------
    schedule_search_url = "https://news.tennis365.net/news/tour/schedule/"
    schedule_agent = Mechanize.new
    schedule_page = schedule_agent.get(schedule_search_url)

    @date_elements = schedule_page.search('td.small_day')
    @match_elements = schedule_page.search('td.small_name')
    @category_elements = schedule_page.search('td.cate')

    # --------------ランキングのスクレイピング--------------------
    rank_search_url = "https://news.tennis365.net/news/ranking/?s=head"
    rank_agent = Mechanize.new
    rank_page = rank_agent.get(rank_search_url)
    @rank_name_elements = rank_page.search('#rightCol .rankTblB a')
    @rank_elements = rank_page.search('#rightCol td.num')
    @point_elements = rank_page.search('#rightCol td.point')

    product_search_url = "https://www.yonex.co.jp/tennis/news/products/"
    product_agent = Mechanize.new
    product_page = product_agent.get(product_search_url)
    @product_elements = product_page.search('.newslist a')
    
  end

end
