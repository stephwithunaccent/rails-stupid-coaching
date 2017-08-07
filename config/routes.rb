Rails.application.routes.draw do
  get '/answer', to: 'questions#answer'
  get '/ask', to: 'questions#ask'
end


