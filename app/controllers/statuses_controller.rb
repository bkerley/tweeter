class StatusesController < ApplicationController
  def index
    @page = (params[:page] || 1).to_i
    offset = (@page - 1) * 25
    @statuses = Status.
      order(created_at: :desc).
      limit(25).
      offset(offset).
      all

    @new_status = Status.new
  end

  def create
    @status = Status.create status_params

    redirect_to statuses_path
  end

  def show
  end

  def new
  end

  private
  def status_params
    params.require(:status).permit(:body)
  end
end
