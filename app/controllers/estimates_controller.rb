class EstimatesController < ApplicationController

  def index
    estimates = Estimate.all
    render json: estimates
  end
end
