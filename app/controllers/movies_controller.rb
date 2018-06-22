class MoviesController < ApplicationController


    def index
        @movies = Movies.all
    end

    def show
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to @movie, notice: “The movie has been added!”
        else 
            render ‘new’
        end 
    end

    def edit 
    end

    def update
        if @movie.update(movie_params)
            redirect_to @movie, notice: “Update successful”
        else
            render ‘edit’
        end
    end


    def destroy
        @movie.destroy
        redirect_to root_path, notice: “Movie deleted”
   end

private
    def movie_params
        params.require(:movie).permit(:title, :genre, :length, :premiere_date, 
        :director, :scriptwriter, :description)
    end
    
    def find_movie
        @movie = Movie.find(params[:id])
    end

    #def check_movie_access
        #return if @movie.user == admin
        #redirect_to articles_path
    #end
    

end
