class ShowController < ApplicationController
  def index

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

  def movie
  end

end
