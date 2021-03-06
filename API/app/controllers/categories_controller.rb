class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		render json: @categories
	end

	def show
		@category = Category.find(params[:id])
		render json: @category
	end

	def new
		@category = Category.new
		render json: @category
	end

	def create
		@category = Category.create(category_params)
		render json: @category
	end

	def edit
		@category = Category.find_by(params[:id])
		render json: @category
	end

	def update
		@category = Category.find_by(params[:id])
		@category.update_attributes(category_params)
		render json: @category
	end

	def destroy
		@category = Category.find_by(params[:id])
		@category.destroy
		render json: @category
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end 		

end