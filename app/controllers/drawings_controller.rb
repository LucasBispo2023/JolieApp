class DrawingsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
    before_action :set_drawing, only: [:show, :destroy]


    def index
        @drawings = Drawing.order(created_at: :desc).all
    end

    def show

    end

    def destroy
        if @drawing.destroy
            redirect_to drawings_path, notice: t('Desenho deletado com sucesso')
        else  
            render :index
        end
    end

    def new
        
    end

    def create
        @drawing = Drawing.new(drawing_params);
        if @drawing.save
            render json: {drawing: @drawing, message: "Desenho salvo com sucesso!"}, status: :created
        else
            render json: @drawing.errors, status: :unprocessable_entity
        end
    end

    private
    
    def drawing_params
        params.require(:drawing).permit(:dataURL, :title)
    end

    def set_drawing
        @drawing = Drawing.find(params[:id])
    end
end
