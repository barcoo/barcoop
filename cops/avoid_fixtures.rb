module RuboCop
  module Cop
    module Barcoo
      class AvoidFixtures < Cop
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
end
