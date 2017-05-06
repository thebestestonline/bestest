class BestsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :require_permission, only: :index

def require_permission
  if current_user != User.find( params[:user_id] )
    redirect_to root_path
  end
end


  before_action :set_user, only: [:show, :edit, :update, :destroy]
    def set_user
     @u = User.find( params[:user_id] )
     @b = @u.bests.find( params[:id] )
    end
    
  before_action :set_index, only: [:index]
    def set_index
     @u = User.find( params[:user_id] )
     @bests = @u.bests.all
    end
    
  def update
    if @b.update_attributes(best_params)
      flash[:success] = "Keyword Profile Updated!"
      redirect_to user_best_path(current_user.id,@b.id)
    else
        render action: :edit
    end
  end
  
  def destroy
    if @b.delete
      flash[:success] = "Keyword Profile Deleted!"
      redirect_to user_bests_path(current_user.id)
    else
        
    end
  end


# GET to /users/:user_id/best/new
  def new
    @best = Best.new
  end

# POST to /users/:user_id/bests
  def create
    # Ensure that we have the user who is filling out form
      @user = User.find( params[:user_id] )
      @best = @user.bests.build(best_params)
      if @best.save
        flash[:success] = "Keyword Saved!"
        redirect_to user_bests_path(current_user.id)
      end
  end
    
  private
    def best_params
      params.require(:best).permit( :term, :rank, :company_name, :short_description,
      :long_description,  :email, :address, :phone_number  )
    end
      

#GET to /users/:user_id/bests/:id        
  def show
  end
  
#GET to /users/:user_id/bests/ 
  def index
  end
  
    
#GET to /users/:user_id/bests/:id/edit
  def edit
  end
   
   
   

end
