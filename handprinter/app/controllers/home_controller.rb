class HomeController < ApplicationController
def index
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def terms
  end
  
  def search
    @query = params[:query]
  end
end
