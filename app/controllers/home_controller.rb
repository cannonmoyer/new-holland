class HomeController < ApplicationController
  def index
    @listings = Listing.where(featured: true)
    @size = @listings.size
  end
end
