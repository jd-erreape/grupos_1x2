class AdminController < ApplicationController

  skip_before_filter :authenticate_user!
  before_filter :authenticate_admin!

  layout "admin"

end