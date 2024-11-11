class PagesController < ApplicationController
  def askQuestion
  end

  def showAnswer
    # Je récupère la question du user
    @question = params[:question]
    # Je mets en place ma "logique" de réponses
    # Answer "Great!" when user says "I am going to work"
    if @question == "I am going to work"
      @answer = "Great!"
    # Answer "Silly question, get dressed and go to work!" when user uses "?"
    elsif @question.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    # Answer "I don't care, get dressed and go to work!" else
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
