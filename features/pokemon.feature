Feature: Search Pokemons

   How pokemon player
   I Want explorer the Site Pokemon Pokédex

   Background: 
      Given i am on Website Pokemon Pokédex

   Scenario: Search Pokemon by name
      When searching by Pokemon "butterfree"
      Then i see the details of this pokemon

   Scenario: Search not found
      When searching by Pokemon name not exists
      Then i see the message "No Pokémon Matched Your Search!"

   Scenario: Show Pokemon list order by Z-A
      When select the option show list order by Z-A
      Then i see the list

   Scenario: Login fail
      When Login with user "pkemontest@pkm.com" ans password "pkm@123"
      Then i see the message "Your username or password is incorrect."

   Scenario: search advanced of the pokemon fail
      When i search advanced a pokemon fail
      Then i see the message "No Pokémon Matched Your Search!"

   Scenario: search advanced of the pokemon success
      When i search advanced a pokemon
      Then i see the message "Sableye"