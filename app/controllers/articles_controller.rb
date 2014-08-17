class ArticlesController < ApplicationController
    
    def index
    end

	def new
	end
    
    def create
    	@article = Article.new( article_params )
 
        @article.save
        redirect_to @article
    	
    	## Sayfaya post verilerini basar
    	# render plain: params[:article].inspect
	end
    
    def show
    end


	private
	  def article_params
	    params.require(:article).permit(:title, :text)
	  end

end
