class ApplicationController < ActionController::Base
  #this is t redirect after login
  def after_sign_in_path_for(resource)
    books_path #redirect to books index
  end

  #and this is to redirect after logout
  def after_sign_out_path_for(_resource_or_scope)
    root_path  #redirect to the root path
  end
end
