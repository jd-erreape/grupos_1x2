class Api::ColumnsController < ApplicationController
  respond_to :json

  helper_method :column_games

  skip_before_filter :authenticate_user!

  def show
    begin
      column
    rescue ActiveRecord::RecordNotFound
      render json: {error: 'Column not found'}, status: 404
    end
  end

  protected

  def column_games
    @column_games ||= column.column_games
  end

  def column
    @column ||= Column.find(params[:id])
  end
end