class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :your_name
    devise_parameter_sanitizer.for(:sign_up) << :location  
  end

  def after_sign_up_path_for(resource)
    profile_path(resource)
  end

  def after_sign_in_path_for(resource)
    profile_path(resource)
  end

  def render404
    render :file => File.join(Rails.root, 'public', '404.html'), :status => 404, :layout => false
    return true
  end

end
