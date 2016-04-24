class ArticlesController < ApplicationController
  def index
    if params[:search].blank?
      @articles = Article.all
    else
      @articles = Article.search(params[:search])
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new(article_id: @article.id)
  end
end
