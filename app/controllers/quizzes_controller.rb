class QuizzesController < ApplicationController
  def index
    @answer = params[:answer_values] || []
  end

  def count_result
    answers = params[:post]
    puts answers.values

    @answer_values = Hash.new(0)

    answers.values.each do |v|
      @answer_values[v] += 1
    end

    flash[:success] = true
    respond_to do |format|
      format.html { redirect_to quizzes_url(answer_values: @answer_values) }
    end
  end
end
