class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  # ログインや会員登録をしたら、最後にログインをしようとしたページが表示されるように設定
  before_action :store_user_location!, if: :storable_location?

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end

end
