class Admin::DashboardController < AdminController

  before_filter :load_teams

  inherit_resources

  def show

  end

  protected

  def load_teams
    @teams = Team.all
  end


end