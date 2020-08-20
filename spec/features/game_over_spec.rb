feature 'Game over' do
  context 'when Player 2 reaches 0 HP first' do
    before do
      srand(777)
      sign_in_and_play
      10.times { attack_and_confirm }
    end
    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Thanos has been obliterated!'
      expect(page).to have_content 'Voldemort is victorious!'
    end
  end
end
