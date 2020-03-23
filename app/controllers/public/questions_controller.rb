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

    if current_answer = current_user.answers.find_by(question: @current_question)
      current_answer.update(value: params[:answer_option][:value])
    else
      current_user.answers.create(question: @current_question, value: params[:answer_option][:value])
    end
    
    if position != @question_count
      redirect_to new_questions_path(position: position + 1)
    else
      redirect_to root_path notice: '回答が完了しました！'
    end
  end
  
  def edit
    @position = params[:position].present? ? params[:position].to_i : 1
    @question_count = Question.where(phase: current_user.family.phase).count
    @current_question = Question.find_by(phase: current_user.family.phase, position: @position)
    @current_answer_options = AnswerOption.where(question: @current_question)
    @current_answer = current_user.answers.find_by(question: @current_question)
  end
  
  def update
    position = params[:position].to_i
    @question_count = Question.where(phase: current_user.family.phase).count
    @current_question = Question.find_by(phase: current_user.family.phase, position: position)
    
    if current_answer = current_user.answers.find_by(question: @current_question)
      current_answer.update(value: params[:answer_option][:value])
    else
      current_user.answers.create(question: @current_question, value: params[:answer_option][:value])
    end

    if position != @question_count
      redirect_to edit_questions_path(position: position + 1)
    else
      redirect_to root_path notice: '回答が完了しました！'
    end 
  end
end
