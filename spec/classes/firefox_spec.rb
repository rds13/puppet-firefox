require 'spec_helper'

describe 'firefox' do
  it do
    should contain_class('firefox')
    should contain_package('Firefox').with({
      :source   => 'http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/26.0/mac/en-US/Firefox%2026.0.dmg',
      :provider => 'appdmg'
    })
  end
end
