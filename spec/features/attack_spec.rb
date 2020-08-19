feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Voldemort attacked Thanos'
  end

  scenario 'reduce player 2 health to 90' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Thanos: 90HP'
  end

  scenario 'reduce Player 1 health to 90' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Thanos: 90HP'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Voldemort: 90HP'
  end
end
