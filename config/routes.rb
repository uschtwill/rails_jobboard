# == Route Map
#
#                      Prefix Verb   URI Pattern                        Controller#Action
#              companies_show GET    /companies/show(.:format)          companies#show
#                   companies GET    /companies(.:format)               companies#index
#         new_company_session GET    /companies/sign_in(.:format)       devise/sessions#new
#             company_session POST   /companies/sign_in(.:format)       devise/sessions#create
#     destroy_company_session DELETE /companies/sign_out(.:format)      devise/sessions#destroy
#            company_password POST   /companies/password(.:format)      devise/passwords#create
#        new_company_password GET    /companies/password/new(.:format)  devise/passwords#new
#       edit_company_password GET    /companies/password/edit(.:format) devise/passwords#edit
#                             PATCH  /companies/password(.:format)      devise/passwords#update
#                             PUT    /companies/password(.:format)      devise/passwords#update
# cancel_company_registration GET    /companies/cancel(.:format)        devise/registrations#cancel
#        company_registration POST   /companies(.:format)               devise/registrations#create
#    new_company_registration GET    /companies/sign_up(.:format)       devise/registrations#new
#   edit_company_registration GET    /companies/edit(.:format)          devise/registrations#edit
#                             PATCH  /companies(.:format)               devise/registrations#update
#                             PUT    /companies(.:format)               devise/registrations#update
#                             DELETE /companies(.:format)               devise/registrations#destroy
#                        jobs GET    /jobs(.:format)                    jobs#index
#                             POST   /jobs(.:format)                    jobs#create
#                     new_job GET    /jobs/new(.:format)                jobs#new
#                    edit_job GET    /jobs/:id/edit(.:format)           jobs#edit
#                         job GET    /jobs/:id(.:format)                jobs#show
#                             PATCH  /jobs/:id(.:format)                jobs#update
#                             PUT    /jobs/:id(.:format)                jobs#update
#                             DELETE /jobs/:id(.:format)                jobs#destroy
#                        root GET    /                                  welcome#index
#

Rails.application.routes.draw do
  get 'companies/:id' => 'companies#show'

  # get 'companies'
  get '/companies' => 'companies#index'

  devise_for :companies
  resources :jobs
  # root 'jobs#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
