Rails.application.routes.draw do
	resources :pages do
	end

	resources :posts do
		resources :categories, :tags
	end


end
