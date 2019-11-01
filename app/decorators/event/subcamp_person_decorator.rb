# encoding: utf-8

#  Copyright (c) 2019, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

class Event::SubcampPersonDecorator < ApplicationDecorator

  def initialize(*args)
    super(*args)
    context[:hidden_contact_attrs].each do |hidden_attr|
      define_singleton_method(hidden_attr, -> { nil })
    end
    context[:hidden_contact_assocs].each do |hidden_assoc|
      define_singleton_method(hidden_assoc, -> { [] })
    end
  end

end
