class ReactionsController < ApplicationController

  def add_reaction
    Reaction.create(myname: params[:myname], yourname: params[:yourname])
  end

  def update_reaction
    reaction = Reaction.find_by(myname: params[:myname], yourname: params[:yourname])
    reaction.update(kind: params[:kind])
  end

  #def reaction_times_update
    #reaction = Reaction.find_by(myname: params[:myname], yourname: params[:yourname])
    #reaction.update(kind_time: params[:kind_time])
  #end

  def search_reaction
    reactions = Reaction.where(yourname: params[:myname])
    render json: {message: "succeed", reaction: reactions}, status: :ok
  end

end
