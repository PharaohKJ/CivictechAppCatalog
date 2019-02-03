module CivicTechApplicationsHelper
  def tag_type_css_map(type)
    {
      ''           => 'btn btn-primary mb-1',
      'TechTag'    => 'btn btn-secondary mb-1',
      'ContestTag' =>    'btn btn-success mb-1',
      'TechTag'    => 'btn btn-info mb-1',
      'ContestTag' =>    'btn btn-warning mb-1',
      'AppTypeTag' =>    'btn btn-info mb-1',
      'LicenseTag' =>    'btn btn-dark mb-1'
    }[type.to_s] || 'btn btn-danger mb-1'
  end
end
