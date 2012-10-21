Snip::Application.routes.draw do
  match 'auth/:provider/callback' => 'auth#login', via: :post
  root :to => 'home#index'
end
