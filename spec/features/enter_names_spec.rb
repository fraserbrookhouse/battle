feature 'Enter names' do
  scenario ' submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Voldemort'
    fill_in :player_2_name, with: 'Thanos'
    click_button 'Submit'
    expect(page).to have_content 'Voldemort vs. Thanos'
  end
end
