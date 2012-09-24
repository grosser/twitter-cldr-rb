# encoding: UTF-8

# Copyright 2012 Twitter, Inc
# http://www.apache.org/licenses/LICENSE-2.0

require 'weakref'

module TwitterCldr
  module Performance

    class Profiler
      def self.instance
        @profiler ||= Profiler.new
      end

      def track(key, obj)
        @refs[key] = WeakRef.new(obj)
        obj
      end

      def mem_size
        Memory.analyze(@refs).bytes
      end

      private

      def initialize
        @refs = {}
      end
    end

  end
end