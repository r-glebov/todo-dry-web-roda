# frozen_string_literal: true

require 'todo/operation'
require 'todo/main/import'

module Todo
  module Main
    module Operations
      module Users
        class Create < Todo::Operation
          include Import['core.repositories.users_repo']

          def call(attrs)
            user = users_repo.create(attrs)
            Right(user)
          end
        end
      end
    end
  end
end
