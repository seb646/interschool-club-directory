class CategoryController < ApplicationController
    # http_basic_authenticate_with name: "Sebastian", password: "1234", except: [:index, :show]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        @categories = Category.order('name ASC')
    end
    
    def show
        @category = Category.find(params[:id])
    end

    def new 
        @category = current_user.categories.new
        #@club = Club.new
    end
    
    def create
        # Show that data is submitting 
        # render plain: params[:post].inspect
        
        @category = current_user.category.new(category_params);
        # @club = Club.new(club_params);
        
        if(@category.save)
            redirect_to @category
        else
            render 'new'
        end
    end 
    
    def edit
        @category = Category.find(params[:id])
    end
    
    def update
        @category = Category.find(params[:id])
        
        if(@category.update(category_params))
            redirect_to @category
        else
            render 'edit'
        end
    end 
    
    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        
        redirect_to category_path
    end
    
    private def category_params
        params.require(:category).permit(:name, :description)
    end
end