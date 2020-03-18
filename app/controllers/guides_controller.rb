class GuidesController < ApplicationController 
    before_action :set_guide, only: [:edit, :update, :show, :destroy]
    

    def new
        @guide = Guide.new
    end
    def create
        @guide = Guide.new(guide_params)
        if @guide.save
            flash[:notice] = "The guide was suscessfully created"
            redirect_to guide_path(@guide)
        else 
            render "new"
        end
    end

    def show
        
    end

    def edit
        
    end

    def update
        
        if @guide.update(guide_params)
            flash[:notice] = "Guide was Updated"
            redirect_to guide_path(@guide)
        else
            flash[:notice] = "Failed"
            render 'edit'
        end
    end

    def index
        @guides = Guide.all
    end

    def destroy
        
        @guide.destroy
        flash[:notice] = "Guide deleted"
        redirect_to root_path
    end

    private
    def guide_params
        params.require(:guide).permit(:plantname, :description)
    end

    def set_guide
        @guide = Guide.find(params[:id])
    end
end
