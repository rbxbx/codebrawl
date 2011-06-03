class VotesController < ApplicationController

  def create
    @contest = Contest.find_by_slug(params[:contest_id])
    @entry = @contest.entries.find(params[:entry_id])
    @entry.votes.create!(params[:vote].merge!({:user_id => current_user.id}))

    redirect_to @contest
  end

end