module Types
	class SubscriptionType < BaseObject
		field :newLink, Types::LinkType, null: false, description: 'A new link'

		def new_link
		end
	end
end