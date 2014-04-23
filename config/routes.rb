Manual::Application.routes.draw do

  resources :sections do
    resources :chapters do
      match 'quiz', to: 'chapters#quiz', via: 'get'  
    end
  end

  post '/tinymce_assets' => 'tinymce_assets#create'

  match 'home', to: 'static_pages#home', via: 'get'
  match 'help', to: 'static_pages#help', via: 'get'
  match 'contact', to: 'static_pages#contact', via: 'get'
  match 'content', to: 'static_pages#content', via: 'get'
  match 'foreword', to: 'static_pages#foreword', via: 'get'
  match 'mission', to: 'static_pages#mission', via: 'get'
  match 'profile', to: 'static_pages#profile', via: 'get'

  root 'static_pages#home'
  
end
