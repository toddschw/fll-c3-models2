class HomeController < ApplicationController
  def index
    # @school = CodeSchool.find_by name: params[:school]
    # render plain: params.to_json
    #render plain: params[:user][:name] == params["user"]["name"]
   # session[:school] = "wyncode"
    # session.delete :school
    message = if session[:id] == 1
                'logged in'
              else
                'logged out'
              end
    render plain: message
  end

  def login
    session[:id] = 1
    redirect_to root_path
  end

  def logout
    session.delete :id
    redirect_to root_path
  end

  def list
    @users = User.all
  end

  def post
    render plain: params.to_json
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

