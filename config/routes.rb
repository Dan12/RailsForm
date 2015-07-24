Rails.application.routes.draw do
  root "application#show"
  
  get "/submit" => "application#submit"
end
