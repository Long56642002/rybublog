module Mutations
    class CreateUser < BaseMutation
        class AuthProviderSignupData < Types::BaseInputObject
            argument :credentials, Types::AuthProviderCredential, required: false
        end
        argument :displayname, String, required: true
        argument :auth_provider, AuthProviderSignupData, required: false

        type Types::UserType

        def resolve(displayname: nil, auth_provider: nil)
            User.create!(
                displayname: displayname,
                email: auth_provider&.[](:credentials)&.[](:email),
                password: auth_provider&.[](:credentials)&.[](:password)
            )
        end
    end
end