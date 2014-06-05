class SearchesController < ApplicationController

  def create
    redirect_to search_path(params[:twitter][:search])
  end

  def show
    # this worked with the previous version of Twitter gem
    #@tweets = Twitter.search("##{params[:id]}").results
    @tweets = Tweets.search("##{params[:id]}")
  end
end
