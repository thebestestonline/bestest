class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
 #added a global variables for joing the two plans
        
#white listing form fields        
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit( :stripe_card_token, :email, :password, :password_confirmation) }
        end
        
        before_action :beforeAction
        def beforeAction
            $basic_plan = Plan.find(1)
            $pro_plan = Plan.find(2)
        end
  
end

