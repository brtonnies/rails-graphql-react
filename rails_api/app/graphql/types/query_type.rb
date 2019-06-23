module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :links, [Types::LinkType], null: false, description: 'A list of links'

    def links(**args)
      Link.all
    end

  end
end
