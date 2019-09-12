class PokemonPage

    include Capybara::DSL

    def go
        visit "/"
        find("#cookie-dismisser").click
    end

    def search(pkemon_name)
        find("#searchInput").set pkemon_name
        find("#search").click
    end

    def login(user, passwd)
        find(".avatar-icon-wrapper").click
        find("#username").set user
        find("#password").set passwd
        click_button "Sign In"
    end

    def searchAdvancedRange(range)
        find(".filter-toggle-span").click
        find("#minRangeBox").set range
        click_button "Search"
    end
end