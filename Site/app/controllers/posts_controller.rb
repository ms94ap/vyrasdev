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
		@post = Post.create(post_params)
		redirect_to post_path(@post)
	end

	def edit
		@post = Post.find_by(params[:id])
	end

	def update
		@post = Post.find_by(params[:id])
		@post.update_attrinutes(post_params)
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path

	end

	private

	def post_params
		params.require(:post).permit(:name, :category_id, tag_attributes: [:name, :post_id])
	end

end