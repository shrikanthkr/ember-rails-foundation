class SessionsController < ApplicationController

  def create
    user = User.find_for_database_authentication(email: params[:session][:email])
    if user
      if user.valid_password?(params[:session][:password])
        sign_in user
        render json: {
          session: { id: user.id, email: user.email }
        }
      else
        render json: {
          errors: {
            overall: "invalid password"
          }
        }, status: 420
      end
    else
      render json: {
        errors: {
          overall: "invalid email id"
        }
      }, status: 420
    end

  end

  def destroy
    sign_out :user
    render json: {}
  end
end
