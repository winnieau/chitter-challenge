feature 'Creating peeps' do
  scenario 'I can create a new peep' do
    visit '/peeps/new'
    fill_in 'content', with: 'Peep'
    click_button 'Peep'
    expect(current_path).to eq '/peeps'
    within 'ul#peeps' do
      expect(page).to have_content('Peep')
    end
  end
  scenario 'there are no peeps in the database at the start of the test' do
    expect(Peep.count).to eq 0
  end
end
