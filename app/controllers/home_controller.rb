class HomeController < ApplicationController

  def index
  	session[:conversation] ||= []

  	@users = User.all.where.not(id: current_user)
  	@conversations = Conversation.includes(:recipient, :messages).find(session[:conversation])
  end
end
