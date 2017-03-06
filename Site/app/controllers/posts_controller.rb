class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :index
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(posts_param)
	end

	def edit
		@post = Post.find_by(params[:id])
	end

	def update
		@post = Post.find_by(params[:id])
		@post.update(posts_params)
	end

	def destroy
		@post = Post.find_by(params[:id])
		@post.destroy
	end

	private

	def posts_params
		params.require(:post).permit(:name, categories_attributes: [:type], tag_attributes: [:name])
	end

end