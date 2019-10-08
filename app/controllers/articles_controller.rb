class ArticlesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @article = Article.find(params[:id])
  end
end
