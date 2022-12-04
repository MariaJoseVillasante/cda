class PagesController < ApplicationController
  def home
    Rails.logger.info("pages#home") do 
      "Rendered the homepage"
    end
    return unless current_user
    return if current_user.payment_processor.nil?
    
    @portal_session = current_user.payment_processor.billing_portal
    # inicio calendario
    @consultations = Consultation.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
    # fin calendario
  end

  def about
  end
end
