class AllSports < UniversalPage
  include PageObject

  page_url "#{@base_url}/"

  # All sports dropdown
  # most popular

  div(:all_sports_tab, xpath: "//*[contains(@data-testid,'allsports-tab')]")
  div(:all_sports_menu, xpath: "//*[contains(@class,'overflow-auto')]")
  div(:most_popular_list, xpath: "//*[text()='Most Popular Sports']//div//div//a")
  div(:all_sport_list, xpath: "//*[text()='All Sports']//div//div//a")

  # selected sports page title

  h1(:selected_sport_page_title, xpath: "//*[@data-testid='page-title']")
end