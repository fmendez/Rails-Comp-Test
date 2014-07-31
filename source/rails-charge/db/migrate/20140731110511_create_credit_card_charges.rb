class CreateCreditCardCharges < ActiveRecord::Migration
  def change
    create_table :credit_card_charges do |t|
      t.integer :created
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded
      t.integer :customer_id
      t.string :customer
      t.boolean :disputed

      t.timestamps
    end
  end
end
