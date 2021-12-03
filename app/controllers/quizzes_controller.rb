class QuizzesController < ApplicationController
  def index; end

  def count_result
    session[:selected] = params[:post]
    puts session[:selected]
  end
end
