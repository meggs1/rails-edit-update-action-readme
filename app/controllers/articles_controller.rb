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
    @article = Article.find(params[:id]) #queries db for article and stores it as an instance var
    @article.update(title: params[:article][:title], description: params[:article][:description]) #updates values from the form and saves changes
    redirect_to article_path(@article) #redirect to show page
  end
end
