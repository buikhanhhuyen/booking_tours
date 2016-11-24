class MyDevise::SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate! auth_options
    set_flash_message :notice, :signed_in if is_navigational_format?
    sign_in resource_name, resource
    if resource.admin?
      redirect_to admin_static_pages_path
    else
      redirect_to root_url
    end
  end
end
