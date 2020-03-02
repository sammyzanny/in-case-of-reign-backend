class UsersController < ApplicationController
    def create
        User.create(user_params)
    end

    def show
        user = User.find_by(params[:id])
        render json: UserSerializer.new(user)
    end

    def index
        users = User.all 
        render json: UserSerializer.new(users)
    end

    def update
        user = User.find_by(params[:id])
        Ruling.find_by(ruling_id)
        option = Option.find_by(id: params[:verdict] )
        user.rating += option.points
        render json: UserSerializer.new(user)
    end


    private

    def user_params
        params.require(:user).permit(:name, :title, :rating)
    end
end
