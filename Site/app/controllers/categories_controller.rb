class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		render json: @categories
	end

	def show
		@category = Category.find(params[:id])
		render json: @category
	end

	def create
		@category = Category.new(categories_param)
		render json: @category
	end

	def edit
		@category = Category.find_by(params[:id])
		render json: @category
	end

	def update
		@category = Category.find_by(params[:id])
		@category.update(categories_params)
		render json: @category
	end

	def destroy
		@category = Category.find_by(params[:id])
		@category.destroy
		render json: @category
	end

	private

	def categories_params
		params.require(:category).permit(:name)
	end 		

end