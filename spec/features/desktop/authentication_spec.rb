require "spec_helper"

describe "Authentication", type: :feature, device: :desktop do
  context "with invalid params" do
    it do
      visit "/"
      page.find(:link, "Войти").click
      within('div', class: 'content') do
        page.fill_in "user[email]", with: 'test@user.com'
        page.fill_in "user[password]", with: 'testpassword'
        page.find(:button, "Вход").click
      end
      expect(current_path).to eq("/users/sign_in")
      expect(page).to have_text("Вы указали неверный e-mail или пароль")
    end
  end
end
