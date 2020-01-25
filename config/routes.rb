Rails.application.routes.draw do
  devise_for :users
  namespace 'api' do
    namespace 'v1' do
      resources :users do
        collection do
          get 'find_authenticate_user'
        end
      end
      resources :books do
        collection do
          get 'get_all_data_by_author_name'
        end
      end
      resources :reviews
    end
  end
end
