Rails.application.routes.draw do

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :products, :documents,
            concerns: :paginatable, except: %i[edit update]

  root 'products#index'
end
