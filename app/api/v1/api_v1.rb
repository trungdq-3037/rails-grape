class ApiV1 < Grape::API
  version 'v1', using: :path
  format :json
  prefix :api
  mount BookApi
end
