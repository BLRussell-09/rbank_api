class AccountSimpleSerializer < ActiveModel::Serializer
  attributes :id, :account_type, :balance, :member_id
end
