class Matches::BetsController < InheritedResources::Base

  belongs_to :match

  before_filter :add_current_user

  respond_to :js, :only => [:create, :update]

  def update
    update! do |success, failure|
      load_users_overall_selections
      success.js { render 'create' }
      failure.js { render :nothing => true }
    end
  end

  def create
    create! do
      load_users_overall_selections
    end
  end

  protected

  def add_current_user
    params[:bet].merge!({:user_id => current_user.id})
  end

  def load_users_overall_selections
    @voted_1 = resource.match.bets(true).voted_1.length
    @voted_X = resource.match.bets(true).voted_X.length
    @voted_2 = resource.match.bets(true).voted_2.length
    @match = resource.match
  end


end
