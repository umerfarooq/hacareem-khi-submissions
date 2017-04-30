class Api::V1::DiscountsController < ApplicationController
  before_action :set_user
  before_action :set_discount, only: [:show, :update, :destroy]

  # GET /discounts
  def index
    @discounts = SuggestionsService.new( @user ).suggestions

    render json: @discounts, each_serializer: DiscountSerializer
  end

  # GET /discounts/1
  def show
    render json: @discount, serializer: OfferSerializer
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_discount
      @discount = @user.discounts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discount_params
      params.fetch(:discount, {})
    end
end
