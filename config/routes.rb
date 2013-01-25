Spree::Core::Engine.routes.prepend do

  resources :page do
    resources :comments
  end

  namespace :admin do
    resources :comments do
      member do
        put :change_resource
      end
    end
    get "comments/approve/:id/:flag" => "comments#approve"
  end
end
