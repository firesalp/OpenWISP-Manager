# This file is part of the OpenWISP Manager
#
# Copyright (C) 2012 OpenWISP.org
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class RemoveAccessPointGroupsAccessPoints < ActiveRecord::Migration
  def self.up
    drop_table :access_point_groups_access_points
  end

  def self.down
    create_table :access_point_groups_access_points, :id => false, :force => true do |t|
      t.integer :access_point_id
      t.integer :access_point_group_id

      t.timestamps
    end
  end
end
