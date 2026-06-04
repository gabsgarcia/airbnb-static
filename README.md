# No Database Airbnb — Le Wagon Live Code

A simple Airbnb clone built during a Le Wagon live code session. Instead of a real database, flat data is fetched from a remote static JSON file hosted on GitHub.

## What We Built

### Part 1 — Index page

- A `FlatsController` with an `index` action that fetches all flats from the Le Wagon flats JSON API using `open-uri` and `JSON.parse`
- A homepage (`/`) that lists every flat by name and price, each linking to its own show page
- A named route (`as: :apartment`) so views can use `apartment_path(id)` instead of hardcoded URLs
- A `before_action :set_flats` to avoid repeating the fetch logic across actions

### Part 2 — Show page

- A `show` action that reads `params[:id]` and finds the matching flat in the fetched array
- A dynamic route (`GET /flats/:id`) that captures the flat's id from the URL
- A show view displaying the flat's name, price, and a back link to the homepage

### Testing (TDD)

We used Rails system tests with Capybara to drive the browser and verify behaviour:

- Visiting `/` shows an `h1` with text "Flats"
- Visiting `/flats/145` shows the correct flat name ("Charm at the Steps of the Sacre Coeur/Montmartre")

Run the test suite with:

```bash
rails test:system
```

## Bonus — Le Wagon UI Kit Styling

As an extra, we applied the **`card-trip`** component from [Le Wagon's UI Kit](https://www.lewagon.com/ui-kit) to the flat show page.

The card displays:
- A full-width cover photo pulled from the flat's `imageUrl`
- A bottom info bar with the flat name and price, laid out with flexbox

The CSS lives in [app/assets/stylesheets/application.css](app/assets/stylesheets/application.css) and follows the UI Kit's `.card-trip` / `.card-trip-infos` / `.card-trip-pricing` class structure.

## How it Works

```
Browser → GET /flats/145
        → FlatsController#show
        → fetches JSON from GitHub
        → finds flat with id 145
        → renders show.html.erb with @flat
```

The JSON source:
```
https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json
```

## Running the App

```bash
bundle install
rails server
```

Then visit `http://localhost:3000`.
