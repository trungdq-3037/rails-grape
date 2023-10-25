class BookEntity < Grape::Entity
  expose :id
  expose :title
  expose :author
  expose :page
end
