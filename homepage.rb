class ESHomePage < UniversalPage
  include PageObject

  page_url "#{@base_url}/"

  div(:herocard, xpath: "//*[contains(@data-testid,'image-high-res')]")
  a(:watch_tab, xpath: "//*[contains(text(),'Video')]")
  a(:results_tab, xpath: "//*[contains(text(),'Results')]")
  
  div(:all_sports_category, xpath: "//*[contains(@data-testid,'all-sports-section')]")
  div(:most_popular_sport, xpath: "//*[contains(@data-testid,'main-sports-section')]")
  a(:latest_news, xpath: "//*[contains(text(),'Latest news')]")
  a(:most_popular_sport_select, xpath: "//div[(@data-testid='main-sports-section')]//a[(@data-testid='atom-textlink')][2]")
  a(:all_sports_first_sport, css: "div[data-testid='all-sports-section'] a[data-testid='atom-textlink']")
  div(:selected_sport_title, xpath: "//*[@data-testid='subnavigation-link']")
  h1(:results_page_title, xpath: "//*[contains(text(),'Sport results & scores')]")
  div(:watch_page_title, xpath: "//*[@data-testid='subnavigation-link']")
  p(:marketing_banner_title, xpath: "//*[@data-testid='marketing-banner-black-title']")
  a(:subscribe_now_button, xpath: "//*[contains(text(),'Subscribe now')]")
  a(:find_out_more_link, xpath: "//*[contains(text(),'Find out more')]")
  h2(:on_now_rail, xpath: "//*[contains(text(),'On now') or contains(text(),'On Now') or contains(text(),'What')]")
  a(:all_sports_first_bysport, xpath: "(//div[(@data-testid='category-list-menu-items')]//a[(@data-testid='atom-textlink')])[1]")
  a(:football_tab, xpath: "//*[contains(text(),'Football')]")
  div(:video_most_popular, xpath: "((//div[@class='relative']//ul[@role='listbox']//li)[5])")
  div(:latest_videos_tab, xpath: "//*[contains(text(),'Latest Videos')]")
  span(:sign_in, xpath: "//*[contains(text(),'Sign In')]")
  # Locators added
  a(:register_here, xpath: "//*[contains(text(),'Register here')]")
  h2(:create_account, xpath: "//*[contains(text(),'Create Your Account')]")
  p(:pass_help, xpath: "//*[@id='password-helpText']")
  div(:firstname, xpath: "//*[contains(@class,'text-input')]/input")
  div(:email, xpath: "//*[contains(@id,'email')]")
  div(:firstname, xpath: "//*[contains(@id,'firstName')]")
  div(:password, xpath: "//*[contains(@id,'password')]")
  div(:legal_acceptance, xpath: "//*[contains(@class,'create-account-form__terms')]")
  div(:continue_browsing, xpath: "//a[contains(@class,'continue-browsing__text')]")
  div(:reg_reason_right, xpath: "//ul[contains(@class,'registerAside__list')]")
  span(:create_account_cta, xpath: "//*[contains(text(),'CREATE ACCOUNT')]")
  a(:sign_in_link, xpath: "//*[contains(text(),'Sign In')]")
  label(:check_box, xpath: "//*[@id='communication-preference']")
  # top and bottom navigation links
  a(:sd_page_link, xpath: "//*[@data-testid='nav-link-non-olympics']")
  a(:tennis_tab, xpath: "//*[contains(text(),'Tennis')]")
  a(:cycling_tab, xpath: "//*[contains(text(),'Cycling')]")
  a(:search_box, xpath: "//*[@data-testid='nav-link-search']")
  # bottom links
  a(:help_centre, xpath: "//*[contains(text(),'Help centre')]")
  div(:country_dropdown, xpath: "//*[@data-testid='dropdown-button']")
  a(:about_eurosport_link, xpath: "//*[contains(text(),'About Eurosport')]")
  a(:mobile_apps_link, xpath: "//*[contains(text(),'Mobile Apps')]")
  a(:terms_of_use_link, xpath: "//*[contains(text(),'Terms of Use')]")
  a(:privacy_policy_link, xpath: "//*[contains(text(),'Privacy Policy')]")
  a(:legal_information_link, xpath: "//*[contains(text(),'Legal Information')]")
  a(:cookie_policy_link, xpath: "//*[contains(text(),'Cookie Policy')]")
  a(:pass_information_link, xpath: "//*[contains(text(),'Eurosport Pass Information')]")
  a(:modern_slavery_link, xpath: "//*[contains(text(),'Modern Slavery Statement')]")
  # Article page
  div(:article_link, xpath: "//*[@data-testid='secondary-description-block']")
  a(:sports_label, xpath: "//*[@data-analytics-id='label']")
  img(:image_card, xpath: "//*[@data-testid='image-high-res']")
  div(:author_name, xpath: "//*[@class='font-bold']")
  div(:date_information, xpath: "//*[@data-testid='author-date-information']")
  h1(:article_title, xpath: "//*[contains(@class,'ArticleHeroBlack__title')]")
  h2(:secondary_title, xpath: "//*[contains(@class,'ArticleHeroBlack__teaser')]")
  
  # All sports dropdown
  # most popular
  div(:all_sports_tab, xpath: "//*[contains(@data-testid,'allsports-tab')]")
  div(:all_sports_menu, xpath: "//*[contains(@class,'overflow-auto bg-br-2-20')]")
  a(:football_menu, xpath: "//*[contains(@title,'Football')]")
  a(:tennis_menu, xpath: "//*[contains(@title,'Tennis')]")
  a(:cycling_menu, xpath: "//*[contains(@title,'Cycling')]")
  a(:snooker_menu, xpath: "//*[contains(@title,'Snooker')]")
  a(:motorsports_menu, xpath: "//*[contains(@title,'Motorsports')]")
  a(:wintersports_menu, xpath: "//*[contains(@title,'Winter sports')]")
  a(:athletics_menu, xpath: "//*[contains(@title,'Athletics')]")
 
  # all sports
  a(:bsb_menu, xpath: "//*[contains(@title,'BSB')]")
  a(:cricket_menu, xpath: "//*[contains(@title,'Cricket')]")
  a(:cyclingtrack_menu, xpath: "//*[contains(@title,'Cycling - Track')]")
  a(:darts_menu, xpath: "//*[contains(@title,'Darts')]")
  a(:equestrian_menu, xpath: "//*[contains(@title,'Equestrian')]")
  a(:f1_menu, xpath: "//*[contains(@title,'F1')]")
  a(:formula_e_menu, xpath: "//*[contains(@title,'Formula E')]")
  a(:horse_racing_menu, xpath: "//*[contains(@title,'Horse Racing')]")
  a(:judo_menu, xpath: "//*[contains(@title,'Judo')]")
  a(:olympics_menu, xpath: "//*[contains(text(),'Olympics')]")
  a(:paralympics_menu, xpath: "//*[contains(@title,'Paralympics')]")
  a(:rugby_menu, xpath: "//*[contains(@title,'Rugby')]")
  a(:speedway_menu, xpath: "//*[contains(@title,'Speedway')]")
  a(:squash_menu, xpath: "//*[contains(@title,'Squash')]")
  a(:superbikes_menu, xpath: "//*[contains(@title,'Superbikes')]")
  a(:transfers_menu, xpath: "//*[contains(@title,'Transfers')]")
  a(:university_sports_menu, xpath: "//*[contains(@title,'University Sports')]")

  
  h1(:selected_sport_page_title, xpath: "//*[@data-testid='page-title']")
  
end


       def hover_video_title(video_title)
         video_text = driver.find_element(xpath: "//a[contains(text(),'#{video_title}')]")
        driver.action.move_to(video_text).perform
         # not able to handle for hover on element Eventually() and wait until() so used sleep()
        sleep 5 # rubocop:disable Custom/SleepCop
     end
         def hover_over_element(element)
       # driver.action.move_to(element).perform
      logger.info("Doing a click and hold on #{element}")
       driver.action.click_and_hold(element).perform
     end