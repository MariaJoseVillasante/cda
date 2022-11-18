class MembersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_subscription_status

  def dashboard
  end

  private
  def check_subscription_status
    unless current_user.active_subscription
      redirect_to checkout_path(
        line_items: ['price_1M5GuhLJKMHXVcszQJyKiTT2'],
        payment_mode: 'subscription'
      ), alert: 'Debes tener una subscripción para tener acceso a esta página'
    end
  end
end
