class UsersController < ApplicationController
    
    def index
        render json: User.all
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])

        if user.destroy
            render json: user
        else
            render json: "User can not be deleted!!!"
        end
    end


    def show
        render json: params 
    end


    private

    def user_params
        params.require(:user).permit(:username)
    end

end