class Admin::TeamsController < AdminController

  inherit_resources

  def create
    create! do |format|
      format.html {render 'new'}
    end
  end

  def edit
    edit! do |format|
      format.html { render 'new' }
    end
  end

  def update
    update! do |format|
      format.html { render 'new' }
    end
  end

end