class ShowController < ApplicationController

  def index
    init_carousel
    @movies = []
  end

  def search
    title = params[:query]
    search_result = HTTParty.get("http://www.omdbapi.com/?apikey=aea16a54&s=#{title}")
    @movies = search_result['Search'] || []
    init_carousel
    render :index
  end

  def movie
    imdbID = params[:imdbID]
    @movie = HTTParty.get("http://www.omdbapi.com/?apikey=aea16a54&i=#{imdbID}")
  end

  private 
    def init_carousel
      i = 1
      @pictures = []
      while i < 13
        if i < 10
          @pictures << "00#{i}.jpg"
        else
          @pictures << "0#{i}.jpg"
        end
        i += 1
      end
    end
  
end
