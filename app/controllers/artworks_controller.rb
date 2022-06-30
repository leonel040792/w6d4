class ArtworksController < ApplicationController

    def index 
        
        if params.has_key?(:user_id)
            @artworks = Artwork.where(artist_id: params[:user_id])
             @artshared = ArtworkShare.where(viewer_id: params[:user_id])
        else
            @artworks = Artwork.all
        end
        render json: { art_done: @artworks, art_views: @artshared}
    end

    def create 
        @art = Artwork.new(artwork_params)

        if @art.save 
            render json: @art
        else
            render json: @art.errors.full_messages, status: unprocessable_entity
        end
    end

    def show
        @art = Artwork.find(params[:id])
        render json: @art
    end

    def update
        @art = Artwork.find(params[:id])

        if @art.update(artwork_params)
            redirect_to artwork_url(@art)
        else
            render json: @art.errors.full_messages, status: :unprocessable_entity
        end

    end

    def destroy
        @art = Artwork.find(params[:id])

        @art.destroy

        redirect_to artworks_url
    end



    private 

    def artwork_params 
        params.require[:artwork].permit(:title, :image_url, :artist_id)
    end


end