class PagesController < ApplicationController

	def index
		@pages = Page.all
	end

	def show
		@page = Page.find(params[:id])
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.create(page_params)
	end

	def edit
		@page = Page.find_by(params[:id])		
	end

	def update
		@page = Page.find_by(params[:id])
		@page.update(page_params)
	end

	def destroy
		@page = Page.find_by(params[:id])
		@page.destroy
	end

	private

	def page_params
		params.require(:page).permit(:title)
	end 		

end
