class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(category_params)
	end

	def edit
		@category = Category.find_by(params[:id])
		
	end

	def update
		@category = Category.find_by(params[:id])
		@category.update(category_params)
	end

	def destroy
		@category = Category.find_by(params[:id])
		@category.destroy
	end

	private

	def category_params
		params.require(:category).permit(:name, :post_id)
	end 		

end