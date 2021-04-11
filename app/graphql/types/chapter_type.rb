module Types
  class ChapterType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :short_description, String, null: true
    field :book_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :author_name, String, null: true

    def author_name
      object.book.author.name
    end
    
  end
end
