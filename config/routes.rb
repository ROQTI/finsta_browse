Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  get 'welcome/index' => 'welcome#index'

  get 'welcome/view_company' => 'welcome#view_company'
  get 'welcome/view_company_information' => 'welcome#view_company_information'
  get 'welcome/list_unread_reports' => 'welcome#list_unread_reports'
  get 'welcome/view_report' => 'welcome#view_report'
  get 'welcome/mark_as_read' => 'welcome#mark_as_read'
  get 'welcome/list_all_directors'=> 'welcome#list_all_directors'
  get 'welcome/update_company' => 'welcome#update_company'
  post 'welcome/update_company' => 'welcome#update_company'
  get 'welcome/view_market' => 'welcome#view_market'
  post 'welcome/update_market' => 'welcome#update_market'
  get "welcome/create_new_company" => 'welcome#create_new_company'
  post 'welcome/create_new_company' => 'welcome#create_new_company'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
