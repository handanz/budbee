class ArticlesController < ApplicationController
  def show
    #@user = User.find(params[:id])
    @article = Article.find(params[:id])
    @user = @article.user
    @tags = @article.tag_list
  end
end
