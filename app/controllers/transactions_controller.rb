class TransactionsController < ApplicationController

  before_action :set_item, only: [:new, :create]

  def new
    @transaction = Transaction.new
    start_date = params[:booking][:start_date]
    end_date = params[:booking][:end_date]

    @final_price = (( date_formatted(end_date) - date_formatted(start_date) ).to_i * @item.price)
  end

  def create
    @transaction = Transaction.new(transction_params)
    @transaction.item = @item

  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def date_formatted(var)
    Date.strptime(var, '%m/%d/%Y')
  end
end
