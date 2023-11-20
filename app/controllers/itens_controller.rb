class ItensController < ApplicationController
    before_action :produtos_for_select, only: [:new]
    def index
        @itens = Item.all
    end

    def new 
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)

        if @item.save
            redirect_to item_url(@item)
        else
            render :new
        end
    end

    def edit
        @item = Item.find(params[:id])
    end

    def show
        @item = Item.find(params[:id])
    end

    def produtos_for_select
        @produtos = Produto.all.map{|p| [p.nome, p.id]}
    end

    private 

    def item_params
        params.require(:item).permit(:produto_id, :preco_unitario, :quantidade)
    end
end
