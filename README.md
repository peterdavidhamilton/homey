# README

## Submitted by: Peter Hamilton

- <https://github.com/peterdavidhamilton/homey>
- <https://git.heroku.com/homey-peter-hamilton.git>

## Feature: project conversation history

A `user` should be able to:
- leave a comment
- change the status of the project

The `project conversation history` should:
- list comments
- list status changes

## 3 Amigos questions

- is project status behaviour predefined, customisable, or dependent on project type?
    > Predefined. 3 possible states for all projects with an essential default
- what are the project states? 
    > Not Started, In Progress and Completed

## Considerations

- Adopt preferred/approved template language.
- User authentication, design patterns, use of frontend frameworks are outside the scope of the ask.
- Use TDD and standard MVC to deliver the essential functionality with RESTful CRUD.
- Follow best practices for documentation and testing pyramid hierarchy.
- Implement proof of state history quickly to add immediate value

## Command summary

- `$ gh repo create homey --public`
- `$ asdf exec rails new homey-task --minimal --skip-template --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-job --skip-action-cable --skip-asset-pipeline --database=sqlite3`
- `$ rubocop --auto-gen-config --no-auto-gen-timestamp`
- `$ rails generate rspec:install`
- `$ rails db:seed`
- `$ docker compose up`
- `$ docker compose run app bundle exec rails console`
- `$ docker compose run -e RAILS_ENV=test app bundle exec rspec`
- `$ bundle exec yard`

## Review

- `rails notes` are in RUBY and SLIM files