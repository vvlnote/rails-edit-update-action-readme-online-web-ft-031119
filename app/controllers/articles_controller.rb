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
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    #raise params.inspect
    @article = Article.find(params[:id])
    @article = Article.update(:title => params[:title], :description => params[:description])
    raise @article.inspect
    redirect_to article_path(@article)
  end
end
