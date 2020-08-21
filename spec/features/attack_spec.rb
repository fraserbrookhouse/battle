feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Voldemort\nattacked\nThanos"
  end

  scenario 'reduce player 2 health to 92' do
    srand(777)
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Thanos: 92HP'
  end

  scenario 'reduce Player 1 health to 84' do
    srand(777)
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Voldemort: 84HP'
  end
end
