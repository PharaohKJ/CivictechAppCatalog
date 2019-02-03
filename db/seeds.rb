require 'active_record/fixtures'

def import_fixture(name)
  Rails.logger.info("Import #{name}...")
  dir = File.join(Rails.root, 'db', 'seeds', 'fixtures')
  ActiveRecord::FixtureSet.create_fixtures dir, name
end

import_fixture(:civic_tech_applications)
import_fixture(:tags)
