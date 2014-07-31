require 'rails_helper'
feature "Customer creditcard charges" do
  scenario "Listing failed charges" do
    visit "/charges"
    expect(page).to have_text("Failed Charges")
    page.assert_selector("table#failed tbody tr", count: 5)
  end
  scenario "Successful charges" do
    visit "/charges"
    expect(page).to have_text("Successful Charges")
    page.assert_selector("table#success tbody tr", count: 10)
  end
  scenario "Disputed failed charges" do
    visit "/charges"
    expect(page).to have_text("Disputed Charges")
    page.assert_selector("table#disputed tbody tr", count: 5)
  end
end
