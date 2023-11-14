class ArticleController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.create(article_params)
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:articles).permit(:title, :content)
  end

end
