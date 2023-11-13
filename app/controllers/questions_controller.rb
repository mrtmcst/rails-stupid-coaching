class QuestionsController < ApplicationController
  def ask; end

  def answer
    @ask = params[:ask]
    @answer = if @ask == 'I am going to work'
                'Great!'
              elsif @ask.present? && @ask.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
