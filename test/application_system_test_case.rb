require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #use headless Chrome for running system/browser tests
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end
