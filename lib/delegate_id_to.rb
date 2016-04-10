module DelegateIdTo
  def self.included(base) # :nodoc:
    base.class_eval do
      def self.delegate_id_to(*args)
        args.each do |method_sym|
          define_method(:"#{method_sym}_id") do
            object = send(method_sym)
            object && object.id
          end
        end
      end

      def self.delegate_id_to_singular_associations
        # @note For ActiveRecord::Base and children only
        delegate_id_to *reflect_on_all_associations(:has_one).map(&:name)
      end
    end
  end
end

Kernel.send(:include, DelegateIdTo) unless Kernel.included_modules.include? DelegateIdTo
