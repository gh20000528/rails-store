class Api::V1::StoresController < ApplicationController
    before_action :find_store

    def sort
        #寫進資料庫
        @store.insert_at(params[:newIndex].to_i)
        render json: {id: params[:id],result: 'ok'}
    end

    private
    def find_store
        @store = Store.find_by(id: params[:id])
    end
    
end
