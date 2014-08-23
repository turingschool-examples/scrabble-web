require 'test_helper'

class DisplayingPlaysTest < ActionDispatch::IntegrationTest

  def first_words
    {'hello' => 8, 'HOME' => 9}
  end

  def last_words
    {'eight' => 9, 'finish' => 12, 'pin' => 5}
  end

  def all_words
    first_words.merge(last_words)
  end

  def setup
    all_words.keys.each do |word|
      Play.create(:word => word)
    end
  end

  def test_it_displays_only_three_previous_plays
    skip
    visit '/plays'
    within("#plays") do
      first_words.each do |word, score|
        refute page.has_content?(word.downcase)
      end

      last_words.each do |word, score|
        assert page.has_content?(word.downcase)
        assert page.has_content?(score)
      end
    end
  end
end
