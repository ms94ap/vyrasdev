Rails.application.routes.draw do
	resources :posts do
  end

  resources :pages do
  end

  resources :categories do
  end

  resources :tags do
  end

end
