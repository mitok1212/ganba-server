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
    #friendとuserでlogin
    users = Friend.joins(:user)
    .select('friends.*, users.login')
    #.where(friendme: params[:myself])

    #friendとreactionでkind
    reactions = Friend.joins(:reactions)
    .select('reactions.kind')
    .where(yourname: params[:myself])

    #friendとuserでlogin_time
    times = Friend.joins(:user)
    .select('users.login_time')
    .where(name: params[:myself])

    friends = Friend.where(friendme: params[:myself])
    render json: {message: "succeed", friend: users}, status: :ok
  end

end
