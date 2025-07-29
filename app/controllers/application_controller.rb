class ApplicationController < ActionController::Base
  include Kaminari::Helpers::HelperMethods #include Kaminari helpers

  #redirect after sign-in
  def after_sign_in_path_for(resource)
    books_path #redirect to books index
  end

  #redirecting after sign-out
  def after_sign_out_path_for(_resource_or_scope)
    root_path #redirect to root
  end
end
