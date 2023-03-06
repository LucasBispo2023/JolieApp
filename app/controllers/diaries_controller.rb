class DiariesController < ApplicationController
    before_action :set_diary, only: [:show, :destroy]
    def index
        @diaries = Diary.order(created_at: :desc).all.page(params[:page])
    end

    def new
        @diary = Diary.new
    end

    def show

    end

    def create
        @diary = Diary.new(diary_params)
        if @diary.save
            redirect_to diaries_path, notice: "Nova página do diário criada!"
        else
            render :new
        end
    end

    def destroy
        if @diary.destroy
            redirect_to diaries_path, notice: "Página apagada com sucesso"
        else
            render :index
        end
    end

    private

    def diary_params
        params.require(:diary).permit(:title, :description)
    end
    
    def setDiary
        @diary = Diary.find(params[:id])
    end
end
