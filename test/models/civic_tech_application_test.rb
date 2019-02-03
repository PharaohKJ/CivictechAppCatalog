require 'test_helper'

class CivicTechApplicationTest < ActiveSupport::TestCase
  test "gots tags" do
    pp CivicTechApplication.first.tags
    pp CivicTechApplication.first.tech_tags
    pp CivicTechApplication.first.contest_tags
    pp CivicTechApplication.first.app_type_tags
    pp CivicTechApplication.first.license_tags
  end
end
