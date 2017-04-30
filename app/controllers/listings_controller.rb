class ListingsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
    @listings = Listing.all.where(new: false)
  end
  
  def new
    @listing = Listing.new
  end
  
  def create
  	Listing.create!(params.require(:listing).permit(:name, :msrp, :new, :featured, :image_name, :description, :link))
  	redirect_to admin_listings_path

  end

  def edit
  	@listing = Listing.find(params[:id])
  end

  def update
    listing = Listing.find(params[:id])
    listing.update!(params.require(:listing).permit(:name, :msrp, :new, :featured, :image_name, :description, :link))
    redirect_to admin_listings_path
  end

  def admin_listings
    @listings = Listing.all
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy!
    redirect_to admin_listings_path
  end
  
end
