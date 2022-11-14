# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :displayname, String, null: false
    field :avatar, String
    field :email, String, null: false
    field :followers, [UserType]
    field :following, [UserType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
