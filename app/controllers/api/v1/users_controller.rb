class Api::V1::UsersController < ApplicationController

  # GET /users/1
  def show
    render json: User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)

    # Condicional
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  # Solo permite una lista de parametros
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
