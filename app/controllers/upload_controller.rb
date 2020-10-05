class UploadController < ApplicationController
    def new 
        @newrecipie = Recipie.new
    end
    def create
        @newrecipie = Recipie.new(upload_index_params)
 
        if @newrecipie.save
            redirect_to @newrecipie
            else
                render 'new'
            end
    end

end
