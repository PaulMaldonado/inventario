class ArticlesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.where user_id: current_user.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = current_user.articles.new(article_params)
		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end
	end

	def destroy 
		@article.destroy

		redirect_to article_path
	end

	private

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:codigo, :description, :cantidad)
	end
end
