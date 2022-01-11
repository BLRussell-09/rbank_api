class TransactionsController < ApplicationController
  
  def index
    @transactions = Transaction.all()
    render json: @transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def transaction_params
      params.require(:transaction).permit(:account_id, :originator, :amount, :transaction_type)
    end
end
