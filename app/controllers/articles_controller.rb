class ArticlesController < ApplicationController
	def new
	end
	def index
		@article = Article.new
		@articles = Article.all
	end

	def create
		 @article = Article.new(article_params)
		 if @article.save
		 redirect_to article_path(@article)
		else
			render 'new'
		end
	end
	def show
		@article = Article.new
		 @article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :text)
	end
end
