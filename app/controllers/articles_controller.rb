class ArticlesController < ApplicationController

    # include BannerUploader::Attachment.new(:banner)

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(email_params)
      debugger
      @article.banner =  params[:article][:banner]
      
      if @article.save
        redirect_to '/'
      else
        render 'new'
      end
    end

    def index
      @articles = Article.all
    end

    private

    def email_params
      params.require(:article).permit(:title, :body, :author)
    end

end