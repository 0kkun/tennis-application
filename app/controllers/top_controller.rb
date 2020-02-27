class TopController < ApplicationController

  def index
    search_url = "http://news.tennis365.net/news/today/"

    # agentという変数にMechanizeクラスのインスタンスを代入。
    agent = Mechanize.new
    # pageという変数にsearch_urlのウェブサイトからHTML情報をgetというメソッドで、
    # Mechanizeインスタンスから抜き出したものを代入
    page = agent.get(search_url)

    # @elementsというクラス変数に、search_urlのトップページにあるタグを検索
    # 要素を配列形式で入れている。ビューに渡す用。
    @elements = page.search('#cntAreaL02 li a')

    schedule_search_url = "https://news.tennis365.net/news/tour/schedule/"
    schedule_agent = Mechanize.new
    schedule_page = schedule_agent.get(schedule_search_url)
    @date_elements = schedule_page.search('td.small_day')
    @match_elements = schedule_page.search('td.small_name')
    @category_elements = schedule_page.search('td.cate')

    x = schedule_page.search('td.small_day')
    y = schedule_page.search('td.small_name')
    z = schedule_page.search('td.cate')
    @array = [1,2]

  end

end
