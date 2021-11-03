class GossipsController < ApplicationController
  def edit 
    
  end
  def show
    # @gossip = Gossip.all.find_by(id:params[:id])
    @gossip = Gossip.find(params[:id])
  end
  def new
    
  end
  
    def create
      @gossip = Gossip.new(title:params[:title], content:params[:content], user:current_users)
      if @gossip.save
        redirect_to root_path
       
      else 
        redirect_to new_gossip_path
        
      end
      
      

    end
     def gossip_params
      params.permit(:title, :content, :user_id)
    end
  
end
