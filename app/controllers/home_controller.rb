class HomeController < ApplicationController
  def index
    # current_cohort = Cohort.last
    # @users = User.cohort(current_cohort).active
    # @users = User.all
    @users = User.active
    # DO NOT HARDCODE: @user = User.where(name: "Sam")
    @hello = "HELLO!!!"
  end

  def list
    @users = User.all
  end
end
