class ArticlesController < ApplicationController
  
  def show
      @article = Article.find(params[:id])
  end
  
  def index
    @article = Article.new
    @articles = Article.all
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path 
  end

private

  def article_params
    params.require(:article).permit(:article, :image)
  end
end
