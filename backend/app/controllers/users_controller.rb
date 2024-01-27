class UsersController < ApplicationController

    def hello
      render json: {text: "aaaaa"}
    end

    def create
        User.create(name: params[:name], password: params[:password], friend: parms[:friend]) 
    end

end
