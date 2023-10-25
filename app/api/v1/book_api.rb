class BookApi < ApiV1
  # helpers ResponseBase
  # desc 'This gets something.',
  #      detail: '_test_'
  # get '/' do
  #   books = {
  #     id: 1,
  #     title: 'Faker',
  #     author: 'Trung '
  #   }
  #   response_in_success books, BookEntity, :ok
  #   present books
  # end

  # get '/:id' do
  #   books = {
  #     id: params[:id]
  #   }
  #   response_in_success books, BookEntity, :ok
  # end

  resource :books do
    # Define your CRUD operations here
    get do
    end

    desc 'Create a new Book'
    params do
      requires :title, :author, type: String, message: 'Required params are missing'
      requires :page, type: Integer, message: 'Required params are missing'
    end
    post "/" do
      @book = Book.new({
                         title: params[:title],
                         page: params[:page],
                         author: params[:author]
                       })
      if @book.save
        response_in_success @book, BookEntity, :ok
      else
        response_in_failure @book.errors.full_message, BookEntity, :internal_server_error
      end
    end
  end
end
