class UsersController < ApplicationController
  def search
    keyword = params[:keyword]
    result = User.algolia_search(keyword)
    render(json: result, status: :ok)
  end

  def index
    users = User.all
    render(json: users, status: :ok)
  end

  def show
    @user = User.find(params[:id])
    render(json: @user, status: :ok) 
  end
end
