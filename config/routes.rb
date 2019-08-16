require 'api_version_constraint'

Rails.application.routes.draw do
  
  # definindo um namespace /api 
  # formato das requisiçoes em json
  # subdominio api.site.com/caminho
  #,constraints: {subdomain: 'api'}, path: '/'

  namespace :api, defaults: {format: :json}  do 
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1,default: true) do
     
    end
  end
end
