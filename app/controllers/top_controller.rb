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
  end

end
