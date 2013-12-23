# encoding: utf-8

#  Copyright (c) 2012-2013, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

class AddPfadiAttributes < ActiveRecord::Migration
  def change
    add_column :people, :salutation, :string
    add_column :people, :title, :string
    add_column :people, :grade_of_school, :integer
    add_column :people, :entry_date, :date
    add_column :people, :leaving_date, :date
    add_column :people, :j_s_number, :string
    add_column :people, :correspondence_language, :string, limit: 5
    add_column :people, :brother_and_sisters, :boolean, default: false, null: false

    add_column :groups, :pta, :boolean, default: false, null: false
    add_column :groups, :vkp, :boolean, default: false, null: false
    add_column :groups, :pbs_material_insurance, :boolean, default: false, null: false
    add_column :groups, :website, :string
    add_column :groups, :pbs_shortname, :string, limit: 15
    add_column :groups, :bank_account, :string
  end
end