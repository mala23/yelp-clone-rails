class EndorsementsController < ApplicationController

  include ActionView::Helpers::TextHelper

  def create
    @review = Review.find(params[:review_id])
    @review.endorsements.create
    render json: {new_endorsement_count: @review.endorsements.count}, js:"window.location.pathname'restaurants_path'"
  end

end
