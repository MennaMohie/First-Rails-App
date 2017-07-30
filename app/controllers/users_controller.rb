class UsersController < ApplicationController
  def user_params
    params.permit[:name, :age, :country]
  end
  def create
    User.create! user_params
    render json: {status: 'ok'}
  end
end
