class QuestionsController < ApplicationController
  
  def new
    @question = Question.new(flash[:question])
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "お問い合わせを受け付けました"
    else
      redirect_to new_question_path, flash: {
        question: @question,
        error_messages: @question.errors.full_messages
      }
    end
  end
  
  private
  def question_params
    params.require(:question).permit(:name, :name_kana, :mail, :channel, {:apply => []}, :detail)
  end
end
