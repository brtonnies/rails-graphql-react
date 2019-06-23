class Link < ApplicationRecord
	after_save :notify_subscriber_of_addition

	private

	def notify_subscriber_of_addition
		GraphQLRailsApiSchema.subscription.trigger("newLink", {}, self)
	end
end
