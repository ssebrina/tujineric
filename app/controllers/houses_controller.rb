class HousesController < ApplicationController
  def new
    @house = House.all
  end

  def index
    @houses = House.all
  end

  def create
    h = House.new
    h.property_type = params[:property_type]
    h.description = params[:description]
    h.price = params[:price]
    h.address = params[:address]
    h.city = params[:city]
    h.state = params[:state]
    h.zip = params[:zip]
    


    if h.save
      redirect_to '/houses'
    else
      render :new
    end
  end

  def search
  end

  def result
    term = params[:search_term]
    if term
      @houses = House.where('description LIKE ? or property_type LIKE ? or price LIKE ?', "%#{term}%","%#{term}%","%#{term}%")
    else
      @houses = []
    end
  end

  def show
    @house = House.find(params[:id])
  end
end
