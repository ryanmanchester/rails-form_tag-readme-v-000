require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  describe 'new_post' do
    it 'ensures the form route works with the /new action' do
      visit new_post_path
      expect(page.status_code).to eq(200)
    end
    it 'renders HTML in the /new template' do
      visit new_post_path
      expect(page).to have_content('Post Form')
    end
  end
end
