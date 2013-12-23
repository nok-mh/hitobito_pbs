# encoding: utf-8

#  Copyright (c) 2012-2013, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

class Group::Region < Group

  self.layer = true

  children Group::Region,
           Group::Abteilung,
           Group::Rover

  class Adressverwaltung < ::Role
    self.permissions = [:layer_full]
  end

  class Beisitz < ::Role
    self.permissions = [:group_read]
  end

  class Coach < ::Role
    self.permissions = [:layer_read, :contact_data]
  end

  class Ehrenmitglied < ::Role
    self.permissions = []
    self.affiliate = true
  end

  class Heimverwaltung < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Kassier < ::Role
    self.permissions = [:layer_read, :contact_data]
  end

  class Leitungskursbetreuung < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Mediensprecher < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Mitarbeiter < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class MitgliedKrisenteam < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Passivmitglied < ::Role
    self.permissions = []
    self.affiliate = true
  end

  class Praeses < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Praesidium < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class PraesidiumApv < ::Role
    self.permissions = [:group_read]
  end

  class Redaktor < ::Role
    self.permissions = [:layer_read, :contact_data]
  end

  class Regionalleitung < ::Role
    self.permissions = [:layer_full, :contact_data]
  end

  class Revisor < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Sekretariat < ::Role
    self.permissions = [:layer_full, :contact_data]
  end

  class Spezialfunktion < ::Role
    self.permissions = [:group_read]
  end

  class VerantwortungAbteilungen < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungAnimationSpirituelle < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungAusbildung < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungBetreuung < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungBiberstufe < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungIntegration < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungInternationales < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungSuchtpraeventionsprogramm < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungKrisenteam < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungLagermeldung < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungLagerplaetze < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungMaterialverkaufsstelle < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungPfadiTrotzAllem < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungPfadistufe < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungPiostufe < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungPr < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungPraeventionSexuellerAusbeutung < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungProgramm < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungRoverstufe < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VerantwortungWolfstufe < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class VizePraesidium < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  class Webmaster < ::Role
    self.permissions = [:group_read, :contact_data]
  end

  roles Regionalleitung,
        Sekretariat,
        Adressverwaltung,
        Praesidium,
        VizePraesidium,
        PraesidiumApv,
        Praeses,
        Mitarbeiter,
        Beisitz,

        Kassier,
        Revisor,
        Redaktor,
        Webmaster,
        Mediensprecher,
        MitgliedKrisenteam,

        Coach,
        Leitungskursbetreuung,

        VerantwortungBiberstufe,
        VerantwortungWolfstufe,
        VerantwortungPfadistufe,
        VerantwortungPiostufe,
        VerantwortungRoverstufe,
        VerantwortungPfadiTrotzAllem,
        VerantwortungAbteilungen,
        VerantwortungAnimationSpirituelle,
        VerantwortungAusbildung,
        VerantwortungBetreuung,
        VerantwortungIntegration,
        VerantwortungInternationales,
        VerantwortungSuchtpraeventionsprogramm,
        VerantwortungKrisenteam,
        VerantwortungLagermeldung,
        VerantwortungLagerplaetze,
        VerantwortungMaterialverkaufsstelle,
        VerantwortungPr,
        VerantwortungPraeventionSexuellerAusbeutung,
        VerantwortungProgramm,

        Spezialfunktion,

        Ehrenmitglied,
        Passivmitglied
end