class MapPointsController < ApplicationController
	def new
	end

	def index
  		@random = MapPoint.all
	end

	def update
		@map_point = MapPoint.new(title: params[:title], description: params[:description], x: params[:x], y: params[:y]) #params[:put].permit(:type, :description, :x, :y)
  		@map_point.save
  		redirect_to root_path

		#render text: params[:type].inspect
		#head: no_context
	end
	

private
	def map_point_params
		#params.require(:map_point).permit(:type, :description, :x, :y)
	end


end
