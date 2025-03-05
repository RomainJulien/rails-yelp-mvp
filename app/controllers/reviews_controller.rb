class ReviewsController < ApplicationController
  before_action :set_restaurant
  before_action :set_review, only: [:destroy]

  def destroy
    @review.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(dom_id(@review)) }
      format.html { redirect_to @restaurant, notice: 'Review was successfully deleted.' }
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_review
    @review = @restaurant.reviews.find(params[:id])
  end
end
