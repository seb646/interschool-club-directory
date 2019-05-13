class SchoolsController < ApplicationController
    # http_basic_authenticate_with name: "Sebastian", password: "1234", except: [:index, :show]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        @schools = School.order('name ASC')
    end
    
    def show
        @school = School.includes(:clubs).find(params[:id])
        @schools = School.order('name ASC')
    end
    
    def new 
        @school = current_user.schools.new
        @schools = School.order('name ASC')
        #@club = Club.new
    end
    
    def create
        # Show that data is submitting 
        # render plain: params[:post].inspect
        
        @school = current_user.schools.new(school_params);
        # @club = Club.new(club_params);
        
        if(@school.save)
            redirect_to @school
        else
            render 'new'
        end
    end 
    
    def edit
        @school = School.find(params[:id])
    end
    
    def update
        @school = School.find(params[:id])
        
        if(@school.update(school_params))
            redirect_to @school
        else
            render 'edit'
        end
    end 
    
    def destroy
        @school = School.find(params[:id])
        @school.destroy
        
        redirect_to school_params
    end
    
    private def school_params
        params.require(:school).permit(:name, :description, :user_id, :website, :address, :phone, :contact, :logo)
    end
end