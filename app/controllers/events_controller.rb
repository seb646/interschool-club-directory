class EventsController < ApplicationController
   # http_basic_authenticate_with name: "Sebastian", password: "1234", only: [:destroy]
   before_action :authenticate_user!, except: [:index, :show]
    
    def index
       @club = Club.all
       @events = @club.events.all
    end
    
    def show 
        @club = Club.find(params[:club])
        @event = @club.events.all
    end
    
    def new 
        @club = current_user.events.new
        #@club = Club.new
    end
    
    def create 
        @club = Club.find(params[:club])
        @event = @club.events.create(event_params.merge(user: current_user.id))
        
        redirect_to post_path(@club)
    end
    
    def destroy 
        @club = Club.find(params[:club])
        @event = @club.events.find(params[:id])
        @event.destroy
        
        redirect_to posts_path(@event)
    end
    
    private def event_params
        params.require(:event).permit(:user, :name, :date, :location, :description, :rsvp)
    end
end
