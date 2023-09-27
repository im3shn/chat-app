class HomeController < ApplicationController
  def index
    session[:conversations] ||= []
    if params[:search] && params[:search][:search_email].present?
      @users = User.where("email LIKE ?", "%" + params[:search][:search_email] + "%")
    else
      @users = User.all.where.not(id: current_user)
    end
    @conversations = Conversation.includes(:receiver, :messages).find(session[:conversations]).reverse_each
    puts session.to_hash
    puts @conversations
  end
end
