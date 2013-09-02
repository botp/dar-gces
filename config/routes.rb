Dar::Application.routes.draw do
  resources :barangay_organizations

  resources :womens_organization_typologies

  resources :womens_desk_service_typologies

  resources :environmental_concern_typologies

  resources :natural_resource_typologies

  resources :farm_practice_typologies

  resources :ecosystem_typologies

  resources :other_service_typologies

  resources :recreation_service_typologies

  resources :health_service_typologies

  resources :education_service_provided_typologies

  resources :power_supply_typologies

  resources :water_system_typologies

  resources :employment_statuses

  resources :districts

  resources :marketing_area_outlet_typologies

  resources :managed_by_typologies

  resources :agri_based_enterprise_typologies

  resources :marketing_outlet_typologies

  resources :microfinance_service_provider_typologies

  resources :loan_status_typologies

  resources :credit_provider_typologies

  resources :loan_access_typologies

  resources :post_harvest_facility_typologies

  resources :irrigation_facility_typologies

  resources :bridge_project_typologies

  resources :fmr_project_typologies

  resources :registering_agencies

  resources :organization_typologies

  resources :barangay_bridge_projects

  resources :barangay_fmr_projects

  resources :barangay_trainings

  resources :faps_coverages

  resources :arc_types

  resources :barangay_lti_statuses

  resources :arc_barangays

  resources :arcs

  resources :barangay_populations

  resources :barangay_politicals

  resources :barangay_geographicals

  resources :barangays

  resources :municipalities

  resources :provinces

  resources :regions

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
