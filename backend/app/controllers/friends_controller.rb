class FriendsController < ApplicationController

  def add_friend
    Friend.create(friendme: params[:myself], friendyou: params[:yourself])
    Friend.create(friendme: params[:yourself], friendyou: params[:myself])
  end

  def delete_friend
    user1 = Friend.find_by(friendme: params[:myself], friendyou: params[:yourself])
    user1.delete
    user2 = Friend.find_by(friendme: params[:yourself], friendyou: params[:myself])
    user2.delete
  end

  def search
    friends = Friend.where(friendme: params[:myself])
    render json: {message: "succeed", friend: friends}, status: :ok
  end

end
