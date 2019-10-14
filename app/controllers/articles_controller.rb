class ArticlesController < ApplicationController
  def show
    #@user = User.find(params[:id])
    @article = Article.find(params[:id])
    @user = @article.user
    @tags = @article.tag_list
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def article_params
    params.require(:article).permit(:title, :content, :image)
  end
end
