class FriendsController < ApplicationController

  def add_friend
    if Friend.where(friendme:params[:myself]).where(friendyou:params[:yourself]).empty?
      Friend.create(friendme: params[:myself], friendyou: params[:yourself])
      Friend.create(friendme: params[:yourself], friendyou: params[:myself])
      render json: { message: "succeed", friend_data: friend_data }, status: :ok
    else
      render json: { message: "failed" }, status: :bad_request
    end
  end

  def delete_friend
    user1 = Friend.find_by(friendme: params[:myself], friendyou: params[:yourself])
    user1.delete
    user2 = Friend.find_by(friendme: params[:yourself], friendyou: params[:myself])
    user2.delete
  end

  def search
    friends = Friend.where(friendme: params[:myself])
  
    if friends.present?
      friend_data = friends.map do |friend|
        user = User.find_by(name: friend.friendyou)
        reaction = Reaction.where(yourname: friend.friendyou, myname: friend.friendme).order(updated_at: :desc).limit(1).first
  
        if user.present?
          {
            friend_name: friend.friendyou,
            user_login: user.login||0,
            latest_reaction: reaction&.kind||0          
          }
        end
      end.compact
  
      render json: { message: "succeed", friend_data: friend_data }, status: :ok
    else
      render json: { message: "failed" }, status: :bad_request
    end
  end
end
