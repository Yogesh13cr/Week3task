When("I click on allsports from the top menu") do
  def hover_allsports_title(_all_sports)
    all_sports_menu = driver.find_element(xpath: "//*[contains(@data-testid,'allsports-tab')]")
    driver.action.move_to(all_sports_menu).perform
    sleep 5 # rubocop:disable Custom/SleepCop
  end
end

Then("I validate the submenu options in the allsports dropdown") do
  on(ESHomePage) do
    sleep 5 # rubocop:disable Custom/SleepCop
    expect(all_sports_menu.present?).to be_truthy
  rescue StandardError => e
    p e.backtrace
  end
end

Then(/^I click on "([^"]*)"from menu$/) do |popular|
  step "I click on allsports from the top menu"
  # rubocop:disable Metrics/BlockLength
  on(ESHomePage) do |page|
    case popular
    when "FOOTBALL"
      page.wait_until { page.football_menu.present? }
      @page_title = page.football_menu.text
      page.football_menu.click
    when "TENNIS"
      page.wait_until { page.tennis_menu.present? }
      @page_title = page.tennis_menu.text
      page.tennis_menu.click
    when "CYCLING"
      page.wait_until { page.cycling_menu_element.present? }
      @page_title = page.cycling_menu_element.text
      page.cycling_menu_element.click
    when "SNOOKER"
      page.wait_until { page.snooker_menu.present? }
      @page_title = page.snooker_menu.text
      page.snooker_menu.click
    when "MOTORSPORTS"
      page.wait_until { page.motorsports_menu.present? }
      @page_title = page.motorsports_menu.text
      page.motorsports_menu.click
    when "ATHLETICS"
      page.wait_until { page.athletics_menu.present? }
      @page_title = page.athletics_menu.text
      page.athletics_menu.click
    end
  end
end

Then(/^I click on "([^"]*)" from menu$/) do |allsports|
  step "I click on allsports from the top menu"
  on(ESHomePage) do |page|
    case allsports
    when "BSB"
      page.wait_until { page.bsb_menu.present? }
      @page_title = page.bsb_menu.text
      page.bsb_menu.click
    when "CRICKET"
      page.wait_until { page.cricket_menu.present? }
      @page_title = page.cricket_menu.text
      page.cricket_menu.click
    when "CYCLING TRACK"
      page.wait_until { page.cyclingtrack_menu.present? }
      @page_title = page.cyclingtrack_menu.text
      page.cyclingtrack_menu.click
    when "DARTS"
      page.wait_until { page.darts_menu.present? }
      @page_title = page.darts_menu.text
      page.darts_menu.click
    when "EQUESTRIAN"
      page.wait_until { page.equestrian_menu.present? }
      @page_title = page.equestrian_menu.text
      page.equestrian_menu.click
    when "F1"
      page.wait_until { page.f1_menu.present? }
      @page_title = page.f1_menu.text
      page.f1_menu.click
    when "FORMULA E"
      page.wait_until { page.formula_e_menu.present? }
      @page_title = page.formula_e_menu.text
      page.formula_e_menu.click
    when "HORSE RACING"
      page.wait_until { page.horse_racing_menu.present? }
      @page_title = page.horse_racing_menu.text
      page.horse_racing_menu.click
    when "JUDO"
      page.wait_until { page.judo_menu.present? }
      @page_title = page.judo_menu.text
      page.judo_menu.click
    when "OLYMPICS"
      page.wait_until { page.olympics_menu.present? }
      @page_title = page.olympics_menu.text
      page.olympics_menu.click
    when "PARALYMPICS"
      page.wait_until { page.paralympics_menu.present? }
      @page_title = page.paralympics_menu.text
      page.paralympics_menu.click
    when "RUGBY"
      page.wait_until { page.rugby_menu.present? }
      @page_title = page.rugby_menu.text
      page.rugby_menu.click
    when "SPEEDWAY"
      page.wait_until { page.speedway_menu.present? }
      @page_title = page.speedway_menu.text
      page.speedway_menu.click
    when "SQUASH"
      page.wait_until { page.squash_menu.present? }
      @page_title = page.squash_menu.text
      page.squash_menu.click
    when "SUPER BIKES"
      page.wait_until { page.superbikes_menu.present? }
      @page_title = page.superbikes_menu.text
      page.superbikes_menu.click
    when "TRANSFERS"
      page.wait_until { page.transfers_menu.present? }
      @page_title = page.transfers_menu.text
      page.transfers_menu.click
    when "UNIVERSITY SPORTS"
      page.wait_until { page.university_sports_menu.present? }
      @page_title = page.university_sports_menu.text
      page.university_sports_menu.click
    end
  end
end
# rubocop:enable Metrics/BlockLength
Then("I should be redirected to selected sport page") do
  on(ESHomePage) do |page|
    page.wait_until(5) { page.selected_sport_page_title.present? }
    page.selected_sport_page_title.text.eql?(@page_title)
  end
end
