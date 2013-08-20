class MapItemsController < ApplicationController
	def new
	end
	def create
		@map_item = MapItem.new(params[:map_item].permit(:name, :url))
  		@map_item.save
  		redirect_to @map_item
  	end

  	def show
  		@map_item = MapItem.find(params[:id])
	end

	def index
  		@random = MapItem.all
	end

private
  	def map_item_params
    	params.require(:map_item).permit(:name, :url)
 	end
end
