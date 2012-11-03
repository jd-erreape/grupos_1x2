class Admin::AdminSessionsController < Devise::SessionsController

  layout 'admin'

  def new
    resource = build_resource(nil, :unsafe => true)
    clean_up_passwords(resource)
    render 'admin/devise/sessions/new'
  end

end