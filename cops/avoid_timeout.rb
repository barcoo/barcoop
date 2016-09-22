module RuboCop
  module Cop
    module Barcoo
      class AvoidTimeout < Cop
        # def uncomment_to_test_this_cop()
        #   Timeout.timeout(5) do
        #     _foo = 'Timeout.timeout sucks http://www.mikeperham.com/2015/05/08/timeout-rubys-most-dangerous-api/'
        #   end
        #   timeout(5) do
        #     _bar = 'This is a deprecated call'
        #   end
        # end

        def on_send(node)
          receiver, method_name = *node
          if method_name == :timeout
            if receiver.nil? || (receiver.const_type? && receiver.const_name == 'Timeout')
              # TODO: add a real link, like AtomLinter/linter-shellcheck
              msg = 'Timeout.timeout is not thread safe, see http://www.mikeperham.com/2015/05/08/timeout-rubys-most-dangerous-api/'
              add_offense(node, :expression, msg)
            end
          end
        end
      end
    end
  end
end
