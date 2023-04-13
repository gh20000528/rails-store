class StoresController < ApplicationController
    include Pagy::Backend
    before_action :find_store, only: [:edit, :update, :show, :destroy]
    def index
        # @stores = Store.order(position: :asc) 
        @pagy , @stores = pagy(Store.order(:position) , items: 9)
        if params[:keyword].present?
            @stores = @stores.search(params[:keyword])
        end
    end
    def new
        @store = Store.new
    end
    def create
        @store = Store.new(store_params)
        if @store.save
            redirect_to stores_path
        else
            render :new
        end
    end
    def show
        @comment = Comment.new
        @comments = @store.comments.order(created_at: :desc)
    end
    def edit
        
    end
    def update
        if @store.update(store_params)
            redirect_to stores_path
        else
            render :edit
        end
    end
    def destroy
        @store.destroy
        redirect_to stores_path
    end

    private
    def store_params
        params.require(:store).permit(:title , :tel , :address)
    end
    def find_store
        @store = Store.find_by(id: params[:id])
    end
    
    
    
    
    
    
    
    

end
