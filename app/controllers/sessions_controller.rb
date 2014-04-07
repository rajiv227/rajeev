class SessionsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def new


  end

  def create

    if @user = User.authenticate(params[:email], params[:password])
      session[:user_id] = @user.id
      @errors =  {:errors => "Login Success"}
      render(:json => @errors.to_json, :status => 200)
    else
      @errors =  {:errors => "Wrong user/password combination"}
      render(:json => @errors.to_json, :status => 404)
   #   redirect_to login_url, :alert => "Invalid user/password combination"
    end



  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Logged out"
  end
end
