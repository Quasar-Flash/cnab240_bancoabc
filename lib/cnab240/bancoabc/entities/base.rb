# frozen_string_literal: false

module CNAB240
  module BancoABC
    module Entities
      class Base
        def header?
          false
        end

        def trailler?
          false
        end

        def register?
          false
        end

        private

          def white_space(range)
            "".center(range.to_i)
          end

          def prepend_zero(data, range)
            return white_space(range) if data.nil?

            data = data.to_s.strip

            return data if data.length == range
            return data[0..range - 1] if data.length > range

            zeros_size = range - data.length
            (1..zeros_size).each { data.prepend("0") }

            data
          end

          def append_space(data, range)
            return white_space(range) if data.nil?

            data = data.to_s.strip

            return data if data.length == range
            return data[0..range - 1] if data.length > range

            data + white_space(range - data.length)
          end
      end
    end
  end
end
