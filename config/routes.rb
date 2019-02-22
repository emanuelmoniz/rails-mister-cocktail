Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'doses', only: [:destroy]

  resources 'cocktails', only: [:index, :new, :show, :create] do
    resources 'doses', only: [:create]
  end

  root to: 'cocktails#index'
end
