class ItemsController < ApplicationController

#   def index
#     if client_has_valid_token?
#       snacks = Snack.all
#       render json: snacks
#     else
#       render json: { go_away: true }, status: :unauthorized
#     end
#   end


	def update
		@item = Item.find(params[:id])

		@item.update(item_params)

		render json: @item
	end


	def create
		item = Item.create(item_params)
		if item.valid?
			render json: item	
			else
		  render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
		end
	  end


	def index
		@items = Item.all
		render json: @items, include: "**"

		# render json: ItemSerializer.new(@items).serialized_json, include: "**"
	end

	def show
		@item = Item.find(params[:id])
		render json: @item, include: "**"
	end

	private 

	def item_params
		params.permit(:img_url, :name, :description, :quantity, :price, :category, :item, :information)
	end

end
