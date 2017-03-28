# frozen_string_literal: true

module Barcoop
  module Cops
    class AvoidFixtures < RuboCop::Cop::Cop
      def on_send(node)
        _receiver, method_name = *node
        if method_name == :fixtures
          msg = 'Avoid using fixtures, use FactoryGirl instead'
          add_offense(node, :expression, msg)
        end
      end
    end
  end
end
