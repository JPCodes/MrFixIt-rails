Rails.application.routes.draw do
  devise_for :workers
  devise_for :users
  root 'landing#index'

  resources :jobs
  resources :workers do
    get 'activate/:job_id', to: 'workers#worker_activate_job', as: 'activate_job'
  end
end
