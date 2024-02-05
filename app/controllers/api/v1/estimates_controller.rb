module API
  module V1
    class EstimatesController < ApplicationController
      before_action :set_estimate, only: %i[ show update destroy ]

      def index
        estimates = Estimate.all
        render json: estimates
      end

      def show
        render json: @estimate
      end

      def create
        @estimate = Estimate.create(:estimate_params)

        render json: @estimate
      end

    private

      def estimate_params
        params.fetch(:data).permit(:title)
      end

      def set_estimate
        @estimate = Estimate.find(params[:id])
      end
    end
  end
end
