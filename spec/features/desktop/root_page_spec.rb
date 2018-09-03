require "spec_helper"

describe "Root page", type: :feature, device: :desktop do
  it "check required elements" do
    visit "/"
    expect(page).to have_title("ПОКУПОН — все СКИДКИ и АКЦИИ 2018 — купоны на скидку — Киев")
    expect(page).to have_link("Войти")
  end
end
