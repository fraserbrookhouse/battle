feature 'viewing hitpoints' do
  scenario 'able to see player hitpoints on page' do
    sign_in_and_play
    expect(page).to have_content 'Voldemort: 100HP'
  end
end