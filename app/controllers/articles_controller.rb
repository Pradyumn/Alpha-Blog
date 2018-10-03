class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    @articles = Article.new(article_params)
    @articles.save
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end