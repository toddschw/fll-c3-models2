class HomeController < ApplicationController

  # layout "simple"
  layout :choose_random_layout, only: :index
  # layout :choose_random_layout, except: :index

  def index
    # head 400
    head :no_content
    # redirect_to users_path
    # redirect_to users_url
    # redirect_to :back
    # @users = User.all
    # render :index
    #render nothing: true
    # These are equivalent:
    # render :list
    # render action: :list
    # render "list"
    # Rendering views associated with other controllers
    # render "users/index"
    # @drug = "714"
    # render file: "/Users/damon/Desktop/fll-c3/models2/a_file"
    # render plain: "ok"
    # render inline: "<%= Time.now %>"
    # render json: @users.first
    # render xml: @users.first
    # render :index, layout: false
    # render :index, layout: "simple"
    # puts "Render does not exit the method"
    # puts "So this will STILL RUN."
    # # render plain: "You did something stupid", status: 400
    # render plain: "You did something stupid", status: :bad_request
  end

  private

  def choose_random_layout
    rand() > 0.5 ? "simple" : false
  end
end
