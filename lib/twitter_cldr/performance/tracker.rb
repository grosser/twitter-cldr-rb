# encoding: UTF-8

# Copyright 2012 Twitter, Inc
# http://www.apache.org/licenses/LICENSE-2.0

module TwitterCldr
  module Performance

    module Tracker
      def track(key, obj)
        TwitterCldr::Performance::Profiler.instance.track(key, obj) if TwitterCldr.profiling_enabled?
        obj
      end
    end

  end
end