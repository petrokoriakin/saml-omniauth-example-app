class ApplicationController < ActionController::Base
  protect_from_forgery
  skip_before_filter  :verify_authenticity_token, :only => [:saml]

  rescue_from Exception do |exception|
    redirect_to root_path
  end

  helper_method :important_data

  def important_data
    @important_data.to_json
  end
end
