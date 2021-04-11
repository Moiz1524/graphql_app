module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :book_count, Integer, null: false

    field :books, [Types::BookType], null: false

    def book_count
      object.books.count
    end
    
  end
end
