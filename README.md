# Marley Spoon Coding Challenge

## Description
- Used `contentful` gem for connection with `Contentful`

## Dependencies

- Docker
- Ruby 2.7.0

## Setup

```bash
gem install bundler
bundle install
```

## ENV

- Create `.env` file
- Use `.env.sample` to fill in the values of the variables

### Local
To run locally
```bash
rails s -p 3000
```
or

```bash
docker-compose up -d
```
## Testing

- `rspec` is used
- - run `bundle exec rspec`
- `rubocop`, `reek`, `rails_best_practices` used for code quality
- `simple_cov` is used for test coverage

![screencapture-file-home-tun-code-mealkit-coverage-index-html-2021-05-23-16_07_47](https://user-images.githubusercontent.com/20577602/119254489-2b1c9680-bbe9-11eb-807f-c20f3d42b7d8.png)

### VCR

- `VCR` is used to mock responses from `Contentful`
- Cassettes are stored in `fixtures/vcr_cassettes`
