# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card_charge do
    created 1
    paid false
    amount 1
    currency "MyString"
    refunded false
    references "MyString"
    customer "MyString"
    disputed false
  end
end
