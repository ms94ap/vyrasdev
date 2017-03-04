class TagsController < ApplicationController

	def index
		@tags = Tag.all
		render json: @tags
	end

	def show
		@tag = Tag.find(params[:id])
		render json: @tag
	end

	def create
		@tag = Tag.new(tags_param)
		render json: @tag
	end

	def edit
		@tag = Tag.find_by(params[:id])
		render json: @tag
	end

	def update
		@tag = Tag.find_by(params[:id])
		@tag.update(tags_params)
		render json: @tag
	end

	def destroy
		@tag = Tag.find_by(params[:id])
		@tag.destroy
		render json: @tag
	end

	private

	def tags_params
		params.require(:tag).permit(:name)
	end 		

end