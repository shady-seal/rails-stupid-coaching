class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]
    if @question.downcase == "i am going to work right now!"
      @answer = ""
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
