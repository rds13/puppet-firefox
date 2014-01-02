# Public: Install Firefox to /Applications.
#
# Examples
#
#   include firefox
class firefox($locale = 'en-US', $version = '26.0', $ensure = present){
  case $ensure {
    present: {
      Package {
        ensure => present
      }
    }

    absent: {
      Package {
        ensure => absent
      }
    }

    default: {
      fail("Ensure must be present or absent!")
    }
  }
  package { 'Firefox':
    source   => "http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${version}/mac/${locale}/Firefox%20${version}.dmg",
    provider => 'appdmg'
  }
}
