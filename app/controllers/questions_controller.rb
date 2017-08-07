class QuestionsController < ApplicationController
  def answer
    @input = params[:query]
    @answer_coach = coach_answer_enhanced(@input)
  end

  def ask


  end

  def coach_answer(your_message)
    if @input.downcase == "i am going to work right now!"
      ""
    elsif @input.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer != ""
      if answer.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end

end
