# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CreditCardCharge.delete_all
Customer.delete_all

raj = Customer.create(firstname: 'Raj', lastname: 'Jamnis')
johny = Customer.create(firstname: 'Johny', lastname: 'Flow')
andrew = Customer.create(firstname: 'Andrew', lastname: 'Chung')
mike = Customer.create(firstname: 'Mike', lastname: 'Smith')

# Succesfull transactions
5.times do
  johny.credit_card_charges.create(created:1389618241,paid:true,amount:4900,currency: "usd",refunded: false, disputed: false)
end
3.times do
  raj.credit_card_charges.create(created:1389618241,paid:true,amount:4900,currency: "usd",refunded: false, disputed: false)
end
andrew.credit_card_charges.create(created:1389618241,paid:true,amount:4900,currency: "usd",refunded: false, disputed: false)
mike.credit_card_charges.create(created:1389618241,paid:true,amount:4900,currency: "usd",refunded: false, disputed: false)


#Fail transactions
3.times do
  andrew.credit_card_charges.create(created:1389618241,paid:false,amount:4900,currency: "usd",refunded: false, disputed: false)
end
2.times do
  mike.credit_card_charges.create(created:1389618241,paid:false,amount:4900,currency: "usd",refunded: false, disputed: false)
end

#Disputed
3.times do
  johny.credit_card_charges.create(created:1389618241,paid:true,amount:4900,currency: "usd",refunded: false, disputed: true)
end

2.times do
  raj.credit_card_charges.create(created:1389618241,paid:true,amount:4900,currency: "usd",refunded: false, disputed: true)
end
