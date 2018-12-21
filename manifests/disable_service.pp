# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class services::disable_service {

	$disbaled_services = ["wsearch", "VSS", "puppet"]
	
	service { $disbaled_services :
		ensure => 'stopped',
		enable => 'false', 
	}
}
