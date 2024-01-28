require 'securerandom'
class UsersController < ApplicationController

  def hello
    render json: {text: "aaaaa"}
  end

  def create
    friend = SecureRandom.alphanumeric(10)
    User.create(name: params[:name], password: params[:password], friend: friend) 
  end

  def login
    user = User.find_by(name: params[:name])
    if user.password == params[:password]
      render json: {message: "succeed"}, status: :ok
    else
      render json: {message: "failed"}, status: :bad_request
    end
  end

  def login_status_update
    #loginの数値を更新する
    user = User.find_by(name: params[:name])
    user.update(login: params[:login])
  end

  def login_times_update
    #login時間を更新する
    user = User.find_by(name: params[:name])
    user.update(login_time: params[:login_time]) 
  end

  def get_friend
    user = User.find_by(name: params[:name])
    if user == nil
      render json: {message: "failed"}, status: :bad_request
    else
      render json: {message: "succeed", friend: user.friend}, status: :ok
    end
  end

  def add_friend
    user = User.find_by(friend: params[:friend])
    if user == nil
      render json: {message: "failed"}, status: :bad_request
    else
      render json: {message: "succeed", name: user.name}, status: :ok
    end
  end  

end
