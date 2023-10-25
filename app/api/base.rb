# require "./lib/helpers/response_base.rb"
class Base < Grape::API
  helpers ResponseBase
  mount ApiV1

  add_swagger_documentation(
    info: {
      title: 'My API',
      version: 'v1',
      description: 'An example API using Grape and Grape-Swagger',
    },
    mount_path: '/swagger_doc',
    hide_documentation_path: true
  )

end
