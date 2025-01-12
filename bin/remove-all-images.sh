#!/bin/bash

# Copyright 2016 - 2022 Crunchy Data Solutions, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permi -fssions and
# limitations under the License.

# pgadmin4 pgbadger pgpool
for i in \
postgres-gis postgres pgbouncer upgrade
do
	docker rmi -f  $CCP_IMAGE_PREFIX/crunchy-$i:$CCP_IMAGE_TAG
	docker rmi -f  crunchy-$i
done

exit
