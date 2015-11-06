class HomeController < ApplicationController
  around_action :log

  def index
    @message = "You are currently "
    @message += if session[:id] == 1
                  'logged in'
                else
                  'logged out'
                end
    #flash.now[:error] = "There is an error right now."
  end

  def redirector
   # flash.keep
    # do some fancy special stuff here
    redirect_to root_path
  end

  def login
    session[:id] = 1
    redirect_to :redirector, notice: "You have just logged in."
    # redirect_to root_path, flash: { school: "is in" }
  end

  def logout
    session.delete :id
    redirect_to :redirector, notice: "You have just logged out."
  end

  def list
    @users = User.all
  end

  def post
    render plain: params.to_json
  end

  private

  def log
    puts "Starting action"
    t = Time.now
    yield
    puts "Stopping action: #{Time.now - t}"
  end
end
__END__
https://www.google.com/search
?
q=gws_rd%3Dssl&biw=960
&bih=504
&tbm=isch
&source=lnms
&sa=X
&ved=0CJIBEPwFKAFqFQoTCOya2uKX_MgCFcRWHgod17cBwA

http://localhost:3000/?person[name]=Damon&person[email]=damon@wyncode.co

http://localhost:3000/?arr[]=1&arr[]=2

