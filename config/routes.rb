Likecounter::Application.routes.draw do
  resources :lts do
    get :like
    get :unlike
  end
end
