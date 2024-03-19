class AssociationsController < ApplicationController
    def index
        @associations = Association.all
    end

    def show
        @association = Association.find(params[:id])
    end

    def new
        @association = Association.new
    end

    def create
        @association = Association.new(association_params)

        if @association.save
            redirect_to @association
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @association = Association.find(params[:id])
    end

    def update
        @association = Association.find(params[:id])
        if @association.update(association_params)
            redirect_to @association
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @association = Association.find(params[:id])
        @association.destroy
        redirect_to root_path, status: :see_other
    end

    private
    def association_params
        params.require(:association).permit(:name, :website, :logo_address)
    end
end
