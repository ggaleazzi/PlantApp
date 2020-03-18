class PagesController < ApplicationController
    def index
        @guides = Guide.all
    end
    
    def about
    end
end