class SchoolClassesController < ApplicationController

    def index 
        @school_class= SchoolClass.all
    end 

    def new 
        @school_class = SchoolClass.new
    end 
    
    def show
        @school_class = SchoolClass.find(parans[:id])
    end 


    def create 
        @school_class = SchoolClass.new(post_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end 

    def update
        @school_class = SchoolClass.find(params[:id])
        @schooL_class.update(post_params(*args))
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 


    private 

    def post_params(*args)
        params.require(:school_class).permit(*args)
    end 

end 