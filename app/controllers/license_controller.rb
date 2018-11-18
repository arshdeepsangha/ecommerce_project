class LicenseController < ApplicationController

  def form
    if user_signed_in?

        @user = current_user

    end
  end

end
