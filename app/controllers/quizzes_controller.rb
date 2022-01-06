class QuizzesController < ApplicationController
  def index
    @answer = params[:result] || []
  end

  def count_result
    answers = params[:post]

    @answer_values = Hash.new(0)

    answers.values.each do |v|
      @answer_values[v] += 1
    end

    if @answer_values.values.uniq.length == @answer_values.values.length
      if @answer_values.key(@answer_values.values.max) == 'high'
        @result = "Your porosity is high, which means your hair really likes emollients because it needs protection from losing proteins and moisture."
      elsif @answer_values.key(@answer_values.values.max) == 'medium'
        @result = "Your porosity is medium, which means your hair should like all the ingredients, but be careful not to overdose them!"
      elsif @answer_values.key(@answer_values.values.max) == 'low'
        @result = "Your porosity is low, which means you'll need more proteins and moisture than other porosity types because your hair hardly absorbs them."
      end
    else
        @result = "It is hard to define your porosity. You probably need to implement a better hair care to see which products fit you most."
    end

    flash[:success] = true
    respond_to do |format|
      format.html { redirect_to quizzes_url(result: @result) }
    end
  end
end
