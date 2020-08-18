feature 'viewing hitpoints' do
  scenario 'able to see player hitpoints on page' do
    visit('/')
    fill_in :player_1_name, with: 'Voldemort'
    fill_in :player_2_name, with: 'Thanos'
    click_button 'Submit'
    expect(page).to have_content 'Voldemort: 100hp'
  end
end