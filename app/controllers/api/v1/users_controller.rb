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




  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    head 204
  end

  private
  # Solo permite una lista de parametros
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
