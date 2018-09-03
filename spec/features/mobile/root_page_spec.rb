require "spec_helper"

describe "Root page", type: :feature, device: :mobile do
  it "check required elements" do
    visit "/"
    expect(page).to have_title("Акции и скидки в Киеве. Купить купон на скидку в Pokupon.ua")
    expect(page).to have_button(nil, class: 'burg-menu')
  end
end
