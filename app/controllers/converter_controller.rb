class ConverterController < ApplicationController

  def convert
    respond_to do |format|
      format.xml {
        h = Hash.from_xml(request.body.read)
        self.content_type = "application/json"
        render json: h and return
      }        
      format.json {
        self.content_type = "application/xml"
        render xml: params["converter"].to_unsafe_h  and return
      }
    end
  end

end