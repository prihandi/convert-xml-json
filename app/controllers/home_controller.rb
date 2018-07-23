class HomeController < ApplicationController

  def index
    begin 
      respond_to do |format|
        format.xml {
          render xml: welcome and return
        }
        format.json {
          render json: welcome and return
        }
      end
    rescue Exception
      render json: welcome and return
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