Gerenciador::Application.routes.draw do
  resources :avaliacao_fisicas


  resources :clientes


  resources :enderecos
  resources :usuarios
  resources :tags
  resources :postagems
  resources :estados do
  	collection do
        post 'cidades_por_estados'  
    end
  end
  root :to => redirect('/postagems')
end
