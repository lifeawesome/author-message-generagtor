require 'pardot_authenticator'

class PardotAuthenticationController < ApplicationController
  def new
    @pardot_creds = PardotCredential.new
  end

  def create
    pardot_api_key = PardotAuthenticator.login(pardot_creds)
    if pardot_api_key
      session['pardot_api_key'] = pardot_api_key
      redirect_to mailings_path
    else
      flash[:error] = "Pardot authentication failed"
      render 'new'
    end
  end

  private
  def pardot_creds
    PardotCredential.new(params[:email], params[:password], params[:user_key])
  end
end
