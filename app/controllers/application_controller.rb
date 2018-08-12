class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def search
    keyword = params[:keyword]
    matched_users = User.algolia_search(keyword)
    matched_champions = Champion.algolia_search(keyword)
    results = matched_champions + matched_users
    render(json: results, status: :ok)
  end
end
