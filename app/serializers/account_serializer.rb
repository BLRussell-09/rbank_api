class AccountSerializer < ActiveModel::Serializer
  attributes :id, :member_id, :balance, :close_date, :account_type, :created_at, :updated_at
  has_many :transactions
end
