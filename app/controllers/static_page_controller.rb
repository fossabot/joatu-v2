class StaticPageController < ApplicationController
  skip_after_action :verify_authorized
  before_action :redirect_if_signed_in, only: [:home, :alpha_signup]

  # caches_action :home, :alpha_signup

  def home
  end

  def alpha_signup
  end

  def tou
  end

  def help
    @joatu_admin = User.find_by_email('jamie@joatu.com') || User.first
  end

  private

  def redirect_if_signed_in
    redirect_to home_pod_path if user_signed_in?
  end
end
