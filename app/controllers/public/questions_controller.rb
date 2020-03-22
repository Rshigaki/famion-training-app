class Public::QuestionsController < ApplicationController
  def new
    @position = params[:position].present? ? params[:position].to_i : 1 
    @question_count = Question.where(phase: current_user.family.phase).count
    @current_question = Question.find_by(phase: current_user.family.phase, position: @position)
    @current_answer_options = AnswerOption.where(question: @current_question)
  end

  def create
    position = params[:position].to_i
    @question_count = Question.where(phase: current_user.family.phase).count
    @current_question = Question.find_by(phase: current_user.family.phase, position: position)
    
    current_user.answers.create(question: @current_question, value: params[:answer_option][:value])
    
    if position != @question_count
      redirect_to new_questions_path(position: position + 1)
    else
      redirect_to root_path notice: '回答が完了しました！'
    end
  end
end
