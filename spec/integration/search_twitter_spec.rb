require 'spec_helper'

feature 'Search Twitter for a term' do
  scenario 'searching by a hashtag' do
    visit root_path
    fill_in 'Search', with: 'Rails'
    click_button 'Search'
    expect(page).to have_css 'li.tweet', count: 15

    all('li.tweet').each do |tweet|
      expect(tweet.text). to match /#rails/i
      #tweet.find('#rails').text
    end
  end

  scenario 'searching with known results' do
    Searcher.searcher = FakeTwitter
    FakeTwitter['#Rails'] = 3.times.map { { text: 'Testing is awesome' } }
    visit root_path
    fill_in 'Search', with: 'Rails'
    click_button 'Search'
    expect(page).to have_css 'li.tweet', count: 3

    all('li.tweet').each do |tweet|
      expect(tweet.text). to match /Testing is awesome/
    end
  end

end
