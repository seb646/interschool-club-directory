class ClubsController < ApplicationController
    # http_basic_authenticate_with name: "Sebastian", password: "1234", except: [:index, :show]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        @clubs = Club.order('name ASC')
    end
    
    def show
        @club = Club.find(params[:id])
    end
    
    def new 
        @club = current_user.clubs.new
        #@club = Club.new
    end
    
    def create
        # Show that data is submitting 
        # render plain: params[:post].inspect
        
        @club = current_user.clubs.new(club_params);
        # @club = Club.new(club_params);
        
        if(@club.save)
            redirect_to @club
        else
            render 'new'
        end
    end 
    
    def edit
        @club = Club.find(params[:id])
    end
    
    def update
        @club = Club.find(params[:id])
        
        if(@club.update(club_params))
            redirect_to @club
        else
            render 'edit'
        end
    end 
    
    def destroy
        @club = Club.find(params[:id])
        @club.destroy
        
        redirect_to clubs_path
    end
    
    private def club_params
        params.require(:club).permit(:name, :description, :user_id, :days, :time, :location, :contact, :image, :faculty, :faculty_email, :school_id)
    end
end