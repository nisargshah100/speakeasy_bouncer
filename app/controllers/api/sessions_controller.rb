class Api::SessionsController < ApplicationController

  def create
    user = AuthService.authenticate(params[:email], params[:password])
    if user
      cookies.signed['user'] = user.token
      success(UserDecorator.decorate(user), 201)
    else
      error(['Invalid username or password'], 403)
    end
  end

end
