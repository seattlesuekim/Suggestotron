class VotesController < ApplicationController
	def create
		topic = Topic.find(params[:topic_id])
		vote = topic.votes.build
		vote.save!
		redirect_to(topics_path)
	end

	def destroy
      vote = Vote.find(params[:id])
      vote.destroy

    	respond_to do |format|
        	format.html { redirect_to topics_url }
        	format.json { head :no_content }
        end
    end
end
