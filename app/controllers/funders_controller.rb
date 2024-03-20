class FundersController < ApplicationController
    def index
        @funders =Funder.all
    end
    def show
        @funder = Funder.find(params[:id])
    end

    def new
        @funder = Funder.new
    end

    def create
        @funder = Funder.new(funder_params)

        if @funder.save
            redirect_to @funder
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @funder = Funder.find(params[:id])
    end

    def update
        @funder = Funder.find(params[:id])
        if @funder.update(funder_params)
            redirect_to @funder
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @funder = Funder.find(params[:id])
        @funder.destroy
        redirect_to root_path, status: :see_other
    end

    private
    def funder_params
        params.require(:funder).permit(:name, :website, :logo_address)
    end
end
