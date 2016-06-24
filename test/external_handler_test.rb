require 'test_helper'
require 'sensu/json'

class TestHandlerExternal < MiniTest::Test
  include SensuPluginTestHelper

  def setup
    set_script 'external/handle-nofilter'
  end

  def test_handled
    event = {
      'client' => { 'name' => 'test' },
      'check' => { 'name' => 'test' },
      'occurrences' => 1,
    }
    output = run_script_with_input(Sensu::JSON.dump(event))
    assert $?.exitstatus == 0 && output =~ /Event:.*test/
  end

  def test_missing_keys
    event = {}
    output = run_script_with_input(Sensu::JSON.dump(event))
    assert $?.exitstatus == 0 && output =~ /Event:/
  end

end
