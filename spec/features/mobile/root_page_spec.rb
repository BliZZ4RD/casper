require "spec_helper"

describe "Root page", type: :feature, device: :mobile do
  before(:each) do
    page.visit "/"
  end

  it { expect(page).to have_title("Акции и скидки в Киеве. Купить купон на скидку в Pokupon.ua") }
  it { expect(page).to have_button(nil, class: 'burg-menu') }
end
