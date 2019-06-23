class RailsApiSchema < GraphQL::Schema
	use GraphQL::Subscriptions::ActionCableSubscription, redis: Redis.new
  mutation(Types::MutationType)
  query(Types::QueryType)
  subscription(Types::SubscriptionType)
end
