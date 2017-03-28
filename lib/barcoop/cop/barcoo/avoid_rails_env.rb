# frozen_string_literal: true

# cops are nested this way because the name of the cop is LastModule::ClassName
module Barcoop
  module Cop
    module Barcoo
      class AvoidRailsEnv < RuboCop::Cop::Cop
        # def uncomment_to_test_this_cop()
        #   _foo = Rails.env.production?
        # end

        def rails_env?(node)
          is_rails_env = false
          if node.send_type?
            receiver, method_name = *node
            is_rails_env = method_name == :env && receiver.const_type? && receiver.const_name == 'Rails'
          end
          return is_rails_env
        end

        def on_send(node)
          receiver, method_name = *node
          if %i(production? development? test?).include?(method_name)
            msg = 'Avoid using Rails.env.environment? and prefer adding a feature flag in the configuration file.'
            add_offense(node, :expression, msg) if rails_env?(receiver)
          end
        end
      end
    end
  end
end
