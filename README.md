# PokeTB Backend
Back-end / server for PokeTB application that utilizes full CRUD calls through Ruby ActiveRecord and Sinatra.

## Front-End
You can access the client-side for this application [here](https://github.com/Jamelse/PokeTB-client).

## Tech Used
- Ruby
- SQL
- ActiveRecord
- Sinatra

## Installation
In your terminal run:
```sh
bundle install
```

## Usage
After installing, run in your terminal:
```sh
# creates migrations
bundle exec rake db:migrate

# optional data seeding
bundle exec rake db:seed

# starting server
rackup config.ru
```

## Video Walkthrough
[https://youtu.be/2zk2aWFm9hc](https://youtu.be/2zk2aWFm9hc)

## License
#### Copyright 2023 Jacob Amelse
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

