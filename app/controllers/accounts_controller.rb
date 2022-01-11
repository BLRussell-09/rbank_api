class AccountsController < ApplicationController

  def index
    @accounts = Account.where(member_id: params[:member_id])
    render json: @accounts, each_serializer: AccountSimpleSerializer
  end

  def show
    @account = Account.find(params[:id])
    render json: @account
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def account_params
      params.require(:account).permit(:member_id, :balance, :close_date, :account_type)
    end

end
