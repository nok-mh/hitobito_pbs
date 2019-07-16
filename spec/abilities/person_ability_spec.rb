# encoding: utf-8

#  Copyright (c) 2012-2019, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

require 'spec_helper'

describe PersonAbility do

  let(:ability)        { Ability.new(crisis_creator) }
  let(:crisis_creator) { Fabricate(:person) }
  let(:member)         { roles(:al_schekka).person }
  let(:actions)  {  [:show, :show_full, :show_details, :history, :index_tags, :index_notes] }
  subject { ability }

  it 'may not show member' do
    is_expected.not_to be_able_to(:show, member)
  end

  it 'may show member if crisis_creator of crisis on group' do
    crises(:schekka).update(creator: crisis_creator)
    actions.each do |action|
      is_expected.to be_able_to(action, member)
    end
  end

  it 'may not show member if crisis_creator of crisis on sibling group' do
    crisis_creator.crises.create!(group: groups(:schweizerstern))
    actions.each do |action|
      is_expected.not_to be_able_to(action, member)
    end
  end
end
