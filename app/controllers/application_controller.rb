class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
 #added a global variables for joing the two plans
 
    before_filter :beforeFilter
        def beforeFilter
            $basic_plan = Plan.find(1)
            $pro_plan = Plan.find(2)
        end 
  
end

