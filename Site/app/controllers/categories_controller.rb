class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		
	end

	def create
		@category = Category.new(categories_param)
		
	end

	def edit
		@category = Category.find_by(params[:id])
		
	end

	def update
		@category = Category.find_by(params[:id])
		@category.update(categories_params)
	end

	def destroy
		@category = Category.find_by(params[:id])
		@category.destroy
	end

	private

	def categories_params
		params.require(:category).permit(:type)
	end 		

end