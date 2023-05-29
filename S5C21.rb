# S5C21 Type B fire-resisting construction — fire-resistance of building elements

# If a building is required to be of Type B construction
if building_type == 'Type B'
  # Each building element listed in Table 4, and any incorporated beam or column, must have an FRL not less than that listed in the Table for the particular Class of building concerned
  table_4_elements.each do |element|
    element_frl = get_frl_from_table_4(element)
    validate_frl(element, element_frl)
  end

  # [No specific information provided] blank clause in NCC (b) 
  
  # If a stair shaft supports any floor or a structural part of it
  if stair_shaft_supports_floor
    # The floor or part must have an FRL of 60/–/– or more
    validate_frl_of_floor(frl_threshold: '60/–/–')
  else
    # The junction of the stair shaft must be constructed so that the floor or part will be free to sag or fall in a fire without causing structural damage to the shaft
    construct_junction_for_sagging_floor
  end
  
  # Any internal wall required to have an FRL with respect to integrity and insulation, except for a wall that bounds a sole-occupancy unit in the topmost (or only) storey and there is only one unit in that storey, must extend to:
  if internal_wall_required
    if floor_next_above_has_frl('30/30/30')
      # The underside of the floor next above if that floor has an FRL of at least 30/30/30
      extend_wall_to_floor_above
    elsif ceiling_has_frl('60 minutes')
      # The underside of a ceiling having a resistance to the incipient spread of fire to the space above itself of not less than 60 minutes
      extend_wall_to_ceiling
    elsif roof_covering_non_combustible
      # The underside of the roof covering if it is non-combustible and, except for roof battens with dimensions of 75 mm x 50 mm or less or sarking-type material, must not be crossed by timber or other combustible building elements
      extend_wall_to_roof_covering
    elsif roof_covering_combustible
      # 450 mm above the roof covering if it is combustible
      extend_wall_above_roof_covering
    end
  end
  
  # A loadbearing internal wall and a loadbearing fire wall (including those that are part of a loadbearing shaft) must be constructed from:
  if loadbearing_internal_wall || loadbearing_fire_wall
    if building_condition_met
      # Concrete
      construct_wall_from_concrete
    elsif masonry_condition_met
      # Masonry
      construct_wall_from_masonry
    elsif fire_protected_timber_condition_met
      # Fire-protected timber
      construct_wall_from_fire_protected_timber
    end
  end

  # [No specific information provided]

  # In a Class 5, 6, 7, 8, or 9 building, in the storey immediately below the roof, internal columns and internal walls other than fire walls and shaft walls need not comply with Table 4
  if class_5_6_7_8_9_building && storey_immediately_below_roof
    exclude_internal_columns_and_walls_from_compliance
  end

  # [No specific information provided]

  # In a Class 2 or 3 building, except within sole-occupancy units, or a Class 9a health-care building or a Class 9b building, a
