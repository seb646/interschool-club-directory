class EventsController < ApplicationController
   # http_basic_authenticate_with name: "Sebastian", password: "1234", only: [:destroy]
   before_action :authenticate_user!, except: [:index, :show]
    
    def index
       @events = Events.order('name ASC')
    end
    
    def show 
       @club = Club.find(params[:club_id])
       @event = @club.events.find(params[:id])
    end
    
    def new 
        @club = current_user.events.new
        #@club = Club.new
    end
    
    def edit
        @club = Club.find(params[:club_id])
        @event = @club.events.find(params[:id])
    end
    
    def create 
        @club = Club.find(params[:club_id])
        @event = @club.events.create(event_params)
        
        redirect_to club_path(@club)
    end
    
    def update
        @club = Club.find(params[:club_id])
        @event = @club.events.find(params[:id])
        
        if(@club.events.update(event_params))
            redirect_to @event
        else
            render 'edit'
        end
    end 
    
    def destroy 
        @club = Club.find(params[:club_id])
        @event = @club.events.find(params[:id])
        @event.destroy
        
        redirect_to club_path(@club)
    end
    
    private def event_params
        params.require(:event).permit(:user_id, :name, :date_and_time, :location, :description, :rsvp)
    end
end
