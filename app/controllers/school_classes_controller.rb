class SchoolClassesController < ApplicationController
  	def show
		@school_classe = SchoolClasses.find(params[:id])
	end

	def new
		@school_classe = SchoolClasses.new
	end

	def create
	   @school_classe = SchoolClasses.new(params.require(:school_classes).permit(:title, :room_number))
     @school_classe.save
	  redirect_to school_classes_path(@school_classes)
	end

	def update
	  @school_classe = SchoolClasses.find(params[:id])
  @school_classe.update(params.require(:school_classes).permit(:title))
	  redirect_to school_classes_path(@school_classe)
	end

	def edit
	  @school_classe = SchoolClasses.find(params[:id])
	end
	
	
end 