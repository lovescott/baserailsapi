class InitController < ApplicationController
  http_basic_authenticate_with name :ENV['API_AUTH_NAME'], password:['API_AUTH_PASSWORD'], :only => [:index]
    def index
        test = "this worked"
        render :json => test.to_json, :status => 200
    end
    
    def wow
        if params
            render :json => params[:full_name].to_json, :status =>200
        end
    end
end
