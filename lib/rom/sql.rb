require 'dry-equalizer'
require 'sequel'
require 'rom'

module ROM
  MissingConfigurationError = Class.new(StandardError)
end

require 'rom/configuration_dsl'

require 'rom/sql/version'
require 'rom/sql/errors'
require 'rom/sql/plugins'
require 'rom/sql/relation'
require 'rom/sql/gateway'
require 'rom/sql/migration'

if defined?(Rails)
  require 'rom/sql/support/active_support_notifications'
  require 'rom/sql/support/rails_log_subscriber'
end

ROM.register_adapter(:sql, ROM::SQL)
