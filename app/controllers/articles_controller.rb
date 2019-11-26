class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: params[:title], description: params[:description])
    redirect_to article_path(@article.id)
  end

  # add edit and update methods here
  def edit 
    @article=Article.find(params[:id])
  end 

  def update
    # raise params.inspect
    @article= Article.find(params[:id])
    @article.update(title:params[:article][:title], description: params[:article][:description])
    session[:form_params]=params.inspect 
    redirect_to article_path(@article.id)
  end 
end
