Rails.application.routes.draw do

  root to: "cocktails#index" 
  resources :cocktails, only: [:show, :new, :create]

    # A user can see the list of cocktails
    # GET "cocktails" => index
    # A user can see the details of a given cocktail, with the dose needed for each ingredient
    # GET "cocktails/42" => show
    # A user can create a new cocktail
    # GET "cocktails/new" => new
    # POST "cocktails" => create

end
