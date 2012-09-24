# encoding: UTF-8

# Copyright 2012 Twitter, Inc
# http://www.apache.org/licenses/LICENSE-2.0

module TwitterCldr
  module Performance
    autoload :Profiler,  'twitter_cldr/performance/profiler'
    autoload :Memory,    'twitter_cldr/performance/memory'
    autoload :Tracker,   'twitter_cldr/performance/tracker'
  end
end