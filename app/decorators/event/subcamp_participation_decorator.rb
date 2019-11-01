# encoding: utf-8

#  Copyright (c) 2019, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

class Event::SubcampParticipationDecorator < ApplicationDecorator
  decorates 'event/participation'

  decorates_association :person, with: Event::SubcampPersonDecorator,
                                 context: lambda { |context|
                                   { hidden_contact_attrs: hidden_contact_attrs(context),
                                     hidden_contact_assocs: hidden_contact_assocs(context) }
                                 }

  def initialize(*args)
    super(*args)
    context[:model] = model
  end

  def self.hidden_contact_attrs(context)
    Event::ParticipationContactData.contact_attrs -
      context[:model].event.contact_attrs_passed_on_to_supercamp
  end

  def self.hidden_contact_assocs(context)
    Event::ParticipationContactData.contact_associations -
      context[:model].event.contact_attrs_passed_on_to_supercamp
  end

end
