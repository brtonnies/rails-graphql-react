Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
  	mount GraphiQL::Rails::Engine, at: '/graphiql', graphiql_path: '/graphql'
  end

  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
