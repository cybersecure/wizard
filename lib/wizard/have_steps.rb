module Wizard
  module Model
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def have_steps(steps, options={})
        self.send(:include, InstanceMethods)
        attr_writer :current_step
        
        class_attribute :steps
        self.steps = steps || {}
        
        class_attribute :options
        self.options = options
      end
    end

    module InstanceMethods
      def current_step
        @current_step || steps.first
      end

      def steps
        self.steps
      end

      def next_step
        self.current_step = steps[steps.index(current_step)+1]
      end

      def previous_step
        self.current_step = steps[steps.index(current_step)-1]
      end

      def first_step?
        current_step == steps.first
      end

      def last_step?
        current_step == steps.last
      end

      def all_valid?
        steps.all? do |step|
          self.current_step = step
            valid?
        end
      end
    end
  end
end
