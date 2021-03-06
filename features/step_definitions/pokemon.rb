  Given("i am on Website Pokemon Pokédex") do
    @start.go  
  end

  When("searching by Pokemon {string}") do |name|
    @start.search(name)
  end
  
  Then("i see the details of this pokemon") do
    expect(page).to have_content "Butterfree"
  end

  When("searching by Pokemon name not exists") do
    @start.search(Faker::Name.first_name)
  end
  
  Then("i see the message {string}") do |msg_error|
    expect(page).to have_content msg_error
  end

  When("select the option show list order by Z-A") do
    find(".custom-select-menu").click
    find('.custom-select-menu', text: "Z-A").click   
  end
  
  Then("i see the list") do
    expect(page).to have_content "Zygard"
  end

  When("Login with user {string} ans password {string}") do |user, passwd|
    @start.login(user,passwd)
  end

  When("i search advanced a pokemon fail") do
    @start.searchAdvancedRange("qqq")
  end

  When("i search advanced a pokemon") do
    @start.searchAdvancedRange("300")
  end