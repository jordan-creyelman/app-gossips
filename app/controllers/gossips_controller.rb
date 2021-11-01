class GossipsController < ApplicationController
  def show
    # @gossip = Gossip.all.find_by(id:params[:id])
    @gossip = Gossip.find(params[:id])
  end
end
