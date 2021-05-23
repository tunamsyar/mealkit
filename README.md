# Marley Spoon Coding Challenge

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
- `rubocop`, `reek`, `rails_best_practices` used for code quality
- `simple_cov` is used for test coverage

![coverage](https://imgur.com/Ody3HT4)
### VCR

- `VCR` is used to mock responses from `Contentful`
- Cassettes are stored in `fixtures/vcr_cassettes`
