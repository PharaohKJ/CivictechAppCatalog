class CivicTechApplication < ApplicationRecord
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :tech_tags,
                          association_foreign_key: 'tag_id',
                          join_table: 'civic_tech_applications_tags'
  has_and_belongs_to_many :contest_tags,
                          association_foreign_key: 'tag_id',
                          join_table: 'civic_tech_applications_tags'
  has_and_belongs_to_many :app_type_tags,
                          association_foreign_key: 'tag_id',
                          join_table: 'civic_tech_applications_tags'
  has_and_belongs_to_many :license_tags,
                          association_foreign_key: 'tag_id',
                          join_table: 'civic_tech_applications_tags'
end
