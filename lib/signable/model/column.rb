module Signable
  module Model
    class Column < Struct.new(:name, :options)
      include Signable::Concerns::Prefix

      def required?
        options[:presence] == true
      end

    end
  end
end
