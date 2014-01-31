name             "gvm"
maintainer       "Nathan Mische"
maintainer_email "nmische@gmail.com"
license          "Apache 2.0"
description      "Installs GVM"
long_description "Installs GVM, the Groovy enVironment Manager. Based on https://github.com/travis-ci/travis-cookbooks/tree/master/ci_environment/gvm."
version          "0.0.1"

%w{ ubuntu }.each do |os|
  supports os
end
