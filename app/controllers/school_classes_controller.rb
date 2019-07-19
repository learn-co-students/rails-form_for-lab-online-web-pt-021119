class StudentsClassesController < ActiveController

    def index 
        @school_classes = School_Class.all
    end 

    def show
        @school_class = School_Class.find(parans[:id])
    end 

    def new 
        @school_class = School_Class.new
    end 

    def create 
        @school_class = School_Class.new(post_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end 

    def update
        @school_class = School_Class.find(params[:id])
        @schooL_class.update(post_params(*args)
    end 

    def edit 
        @school_class = School_Class.find(params[:id])
    end 


    private 

    def post_params(*args)
        params.require(:school_class).permit(*args)
    end 

end 