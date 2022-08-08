class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def dashboard
    @user = User.find(params[:id])
  end
end
