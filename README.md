# Rails API application

This is a simple CRUD Rails API application using `active-model-serializer`.

### Available features

- CRUD operations for a siple `Post` model
- file uploads with ActiveStorage to AWS S3


### Used gems

- [figaro](https://github.com/laserlemon/figaro) to manage secrets and easy upload variables to [Heroku](https://www.heroku.com/home)
- [aws-sdk-s3](https://github.com/aws/aws-sdk-ruby) to upload files to AWS S3

### Deployment

The API is deployed to Heroku free stack.
