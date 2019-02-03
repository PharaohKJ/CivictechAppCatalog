class ContestTag < Tag
  has_and_belongs_to_many :civic_tech_applications,
                          association_foreign_key: 'civic_tech_application_id',
                          join_table: 'civic_tech_applications_tags'
end
