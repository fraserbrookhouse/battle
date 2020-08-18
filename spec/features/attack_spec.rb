feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Voldemort attacked Thanos'
  end

  scenario 'Player 2 health 90 after 1 attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Thanos: 90HP'
  end
end