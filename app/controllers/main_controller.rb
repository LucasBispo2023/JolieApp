class MainController < ApplicationController
    before_action :authenticate_admin!, only: [:with_love]

    def index 
    end

    def with_love
    end

end
