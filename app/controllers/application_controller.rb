class ApplicationController < ActionController::Base

    def home
       render plain:"hello world" 
    end
end
