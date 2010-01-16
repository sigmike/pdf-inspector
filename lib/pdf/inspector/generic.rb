module PDF
  class Inspector 
    class Generic < Inspector
      attr_reader :calls

      def initialize
        @calls = []
      end

      def method_missing(*args)
        @calls << args
      end
      
      def respond_to?(*args)
        true
      end
    end
  end
end
