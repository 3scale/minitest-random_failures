# frozen_string_literal: true
require 'minitest/random_failures/version'

module Minitest
  def self.plugin_random_failures_init(options)
    # We do not use the standard Minitest::Report @io to do the report
    if options[:save_cross_deps]
      reporter << Minitest::RandomFailures::Reporter.new
    end
  end

  def self.plugin_random_failures_options(opts, options)
    opts.on '--save-cross-deps FILE', 'Saving cross dependencies tests in a file to be replayed later' do |file|
      options[:save_cross_deps] = true
      options[:save_cross_deps_file] = file
    end
  end

  module RandomFailures
    class Error < StandardError; end
    # Your code goes here...
    #
    def self.hook!
      Minitest.singleton_class.prepend(Module.new do
        def autorun
          puts 'Minitest.autorun is noop'
        end
      end)
    end

  end
end
