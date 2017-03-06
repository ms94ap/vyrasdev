class PagesController < ApplicationController

	def index
		@pages = Page.all
		render json: @pages
	end

	def show
		@page = Page.find(params[:id])
		render json: @page
	end

	def new
		@page = Page.new
		render json: @page
	end

	def create
		@page = Page.create(page_params)
		render json: @page
	end

	def edit
		@page = Page.find_by(params[:id])
		render json: @page
	end

	def update
		@page = Page.find_by(params[:id])
		@page.update(page_params)
		render json: @page
	end

	def destroy
		@page = Page.find_by(params[:id])
		@page.destroy
		render json: @page
	end

	private

	def page_params
		params.require(:page).permit(:title)
	end 		

end
