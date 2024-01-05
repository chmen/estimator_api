module API
  module V1
    class EstimatesController < ApplicationController
      before_action :set_estimate, only: %i[ show update destroy ]

      def show
        render json: @estimate
      end

      def index
        estimates = Estimate.all
        render json: estimates
      end

    private
      def set_estimate
        @estimate = Estimate.find(params[:id])
      end
    end
  end
end
