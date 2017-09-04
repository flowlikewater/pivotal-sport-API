class UsersController < ApplicationController

  # GET /sports
  def index
    @users = User.all
    render json: @users
  end

  # GET /sports/1
  # def show
  #   render json: @sport
  # end
  #
  # # POST /sports
  # def create
  #   @sport = Sport.new(sport_params)
  #
  #   if @sport.save
  #     render json: @sport, status: :created, location: @sport
  #   else
  #     render json: @sport.errors, status: :unprocessable_entity
  #   end
  # end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports/1
  def destroy
    @user.destroy
  end

  private

    def user_params
      params.require(:user).permit!
    end

end

# .permit(:email, :name, :nickname, :image, :tier, :description)
