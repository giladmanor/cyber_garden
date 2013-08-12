class EpiphyteController < ApplicationController
  before_action :set_user, only: [:start, :stop, :status]
  respond_to :json

  def register
    @user = User.create({:key=>User.generate_key})
    respond_with(@user)
  end
  
  def status
    respond_with(@user.punch_cards.last)
  end
  
  def start
    @user.punch_cards << PunchCard.new({:start_at=>Time.now})
    respond_with(@user.punch_cards.last)
  end
  
  def stop
    pc = @user.punch_cards.last
    pc.end_at = Time.now
    pc.save
    respond_with(@user.punch_cards.last)
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
end
