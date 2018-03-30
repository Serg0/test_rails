class PagesController < ApplicationController
  def dashboard
    redirect_to dashboard_page
  end

  private

  def dashboard_page
    return vehicles_path       if current_user
    return admin_vehicles_path if current_admin

    new_user_session_path
  end
end
