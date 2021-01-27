class ThoughtsController < ApplicationController
    def create
        @album = Album.find(params[:album_id])
        @thought = @album.thoughts.create(thought_params)
        redirect_to album_path(@album)
    end
end

private

def thought_params
    params.require(:thought).permit(:commenter, :body)
end