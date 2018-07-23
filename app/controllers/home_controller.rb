class HomeController < ApplicationController

  def index
    respond_to do |format|
      format.xml {
        p format
        render xml: welcome and return
      }
      format.json {
        p "b"
        render json: welcome and return
      }
        
    end
  end

  private
    def welcome
      {
        message: "Please go to #{request.protocol + request.host_with_port}/api/convert",
        status: 200
      } 
    end

end