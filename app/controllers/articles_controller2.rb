class ArticlesController < ApplicationController
	def new		#1
	end
	def create	#2
	#	render plain: params[:article].inspect
	#end	
	#def create	#3
	#	@article=Article.new(params[:article])
	#	@article.save
	#	redirect_to @article
	#	@article = Article.new(params.require(:article).permit(:title, :text))
	#end
	#def create
  		@article = Article.new(article_params)
 
 		@article.save
  		redirect_to @article
	end
 
	private
  	def article_params
    	params.require(:article).permit(:title, :text)
  	end
  	def show
	    @article = Article.find(params[:id])
	end
	 
	#def new
	#end
end