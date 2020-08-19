feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Voldemort's turn"
    end

    scenario ' after 1 player attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Voldemort's turn"
      expect(page).to have_content "Thanos's turn"
    end
  end
end
