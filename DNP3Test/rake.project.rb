# 
# Licensed to Green Energy Corp (www.greenenergycorp.com) under one
# or more contributor license agreements. See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  Green Enery Corp licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
#  
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
# 
#setup the dnp3test project
$options = {
:target => 'dnp3test.exe',
:project_libs => [:dnp3, :apltesttools, :apl],
:includes => [Boost::get_includes_dir, DEFAULT_INCLUDES],
:warn_flags => ['-Wno-sign-compare'],
:libs => $PLATFORM_LIBS + Boost::get_static_libs
}

$options[:project_libs] << :teamcity if($USE_TEAM_CITY)
