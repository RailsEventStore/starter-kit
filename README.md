# README

## RailsEventStory starter kit

This repository is intended to serve as a starter kit for event-driven Rails apps.

The expected flow is to clone this repo and start working on your event-driven Rails app:

```
git clone ...
rails db:setup
```

It works with sqlite3 database as a (Rails) default.
It doesn't come with rspec, you can rely on minitest (Rails default) or choose to install rspec-rails.

It has the event_store and command_bus set up.
Both objects are available in all controllers. They are instantiated in the config/application.rb file.

It is ready to work with the `aggregate_root` gem. The configuration gives the instance to event_store directly (see config/application.rb file).

It comes with the bounded_context gem so a likely next step is to generate a bounded context with:

```
rails generate bounded_context:generator Sales
```

The code here is meant to work with Rails autoloading.

