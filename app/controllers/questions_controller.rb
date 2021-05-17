class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_message = params[:user_message]
    if params[:user_message] == "I am going to work"
      @coach_response = "Great!"
    elsif params[:user_message].include?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end

end
