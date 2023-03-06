class Quiz::QuizGamesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:checked_answers]

    def index
        @questions = Question.includes(:answers).all
        @quiz_game = QuizGame.new
    end

    def create
       if @quiz_game.create(params[:quiz_game])
        
       end
    end
    def show
      @records = Record.order(score: :desc).all
    end

    def checked_answers
      @record = Record.new(record_params);
      if @record.save
          render json: {record: @record, message: "Respostas Submetidas!"}, status: :created
      else
          render json: @record.errors, status: :unprocessable_entity
      end
    end


    
    private

    def quiz_params
        params.require(:quiz_game).permit(:question_id, :answer_id, :score)
    end

    def record_params
      params.require(:record).permit(:score,:name)
    end
end
