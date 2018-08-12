class ChampionsController < ApplicationController
  def search
    keyword = params[:keyword]
    result = Champion.algolia_search(keyword)
    render(json: result, status: :ok)
  end

  def index
    champions = Champion.all
    render(json: champions, status: :ok)
  end

  def show
    @champion = Champion.find(params[:id])
    render(json: @champion, status: :ok)
  end
end
