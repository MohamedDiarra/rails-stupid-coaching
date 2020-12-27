class QuestionsController < ApplicationController
  def ask 
  end 
  def answer
    @answers = ["Great!","Silly question, get dressed and go to work!","I don't care, get dressed and go to work!"]
    if params[:question] =~ /i am going to work/i
      @answer = "Great!"
    elsif params[:question].ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else 
      @answer = "I don't care, get dressed and go to work!"
    end 
  end 
end
