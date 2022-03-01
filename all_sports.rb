When("I hover over allsports tab") do
  on(AllSports) do |page|
    page.wait_until { page.all_sports_tab_element.present? }
    page.all_sports_tab_element.hover
  end
end

Then("I validate the sports under allsports menu") do
  on(AllSports) do |page|
    expect(page.all_sports_menu_element.present?).to be_truthy
  rescue StandardError => e
    print e.backtrace
  end
end

Then("I validate the sports field under most popular sports") do
  on(AllSports) do |page|
    most_popular_sports = page.most_popular_list

    # Verify most popular sports
    expect(most_popular_sports.present?).to be_truthy

    # Verify elements under most popular sports
    expect(most_popular_sports.length).to be.positive?
    p "Length of most popular sports : #{most_popular_sports.length}"
    most_popular_sports.each do |element|
      p "I am on sport: #{element.text}"
    end
  end
end

When("I click on any sport under most popular") do
  step "I hover over allsports tab"
  most_popular_size = Random.rand(most_popular_sports.length)
  most_popular_random_element = most_popular_sports[most_popular_size]
  most_popular_random_element.click
end

Then("I should be in the selected most popular sports page") do
  on(AllSports) do |page|
    most_popular_title = most_popular_random_element.text
    expect(page.selected_sport_page_title).to have_text(most_popular_title)
  end
end

Then("I validate the sports field under all sports section") do
  on(AllSports) do |page|
    all_sports = page.all_sport_list

    # Verify all sports
    expect(all_sports.present?).to be_truthy

    # Verify elements under all sports
    expect(all_sports.length).to be.positive?
    p "Length of all sports : #{all_sports.length}"
    all_sports.each do |element|
      p "I am on sport: #{element.text}"
    end
  end
end

When("I click on any sport under all sports section") do
  step "I hover over allsports tab"
  all_sports_size = Random.rand(all_sports.length)
  all_sports_random_element = all_sports[all_sports_size]
  all_sports_random_element.click
end

Then("I should be in the selected all sports page") do
  on(AllSports) do |page|
    all_sports_title = all_sports_random_element.text
    expect(page.selected_sport_page_title).to have_text(all_sports_title)
  end
end
