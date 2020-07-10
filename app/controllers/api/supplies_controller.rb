class Api::SuppliesController < ApplicationController

  def index
    @supplies = Supply.all
    render "index.json.jb"
  end

  def show
    @supply = Supply.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @supply = Supply.new(name: params[:name], description: params[:description], price: params[:price])
    
    if @supply.save
      render "show.json.jb"
    else
      render :json => "#{@supply.errors.full_messages}"
    end
      
  end

  def update
    @supply = Supply.find_by(id: params[:id])
    @supply.name = params[:name] || @supply.name  
    @supply.description = params[:description] || @supply.description 
    @supply.price = params[:price] || @supply.price  
    @supply.save
    render "show.json.jb"
  end
  
  def destroy
    @supply = Supply.find_by(id: params[:id])
    @supply.destroy
    render :json => {message: "You successfully removed the #{@supply.name} item from the supplies db"}
  end
  
  


end
