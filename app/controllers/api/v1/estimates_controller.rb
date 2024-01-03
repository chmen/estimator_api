module API
  module V1
    class EstimatesController < ApplicationController

      def index
        estimates = Estimate.all
        render json: estimates
      end
    end
  end
end
