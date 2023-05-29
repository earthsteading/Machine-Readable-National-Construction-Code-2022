# S5C21 Type B fire-resisting construction — fire-resistance of building elements from National Construction Code 2022 via https://ncc.abcb.gov.au/editions/ncc-2022/adopted/volume-one/c-fire-resistance/5-fire-resisting-construction#_da7623e4-c88a-410a-a7e4-377555216c73

# Condition 1
if building_type == "Type B"
  # Each building element
  if building_elements.include?(element)
    required_frl = get_required_frl(element, building_class)
    current_frl = get_current_frl(element)

    if current_frl < required_frl
      # Take action if FRL is not sufficient
      take_action()
    end
  end

  # Stair shaft
  if stair_shaft_supports_floor || stair_shaft_supports_structural_part
    if floor_frl >= 60
      # Floor or part meets FRL requirement
    else
      # Junction construction
      if junction_construction_allows_sagging_or_falling
        # Junction construction allows sagging or falling
      else
        # Take action if junction construction does not meet requirements
        take_action()
      end
    end
  end

  # Internal wall
  if internal_wall_required && !sole_occupancy_unit_wall_in_topmost_storey
    if floor_above_frl >= 30 || ceiling_frl >= 60 || roof_covering_non_combustible || roof_covering_450mm_above_combustible
      # Internal wall extends as required
    else
      # Take action if internal wall does not extend as required
      take_action()
    end
  end

  # Loadbearing walls
  if loadbearing_internal_wall || loadbearing_fire_wall_in_loadbearing_shaft
    if constructed_from_concrete || constructed_from_masonry || (constructed_from_fire_protected_timber && meets_additional_conditions)
      # Loadbearing walls meet requirements
    else
      # Take action if loadbearing walls do not meet requirements
      take_action()
    end
  end

  # Class-specific exceptions
  if class_5_6_7_8_9_building_in_storey_below_roof && !fire_walls_shaft_walls
    # Internal columns and walls do not need to comply
  end

  if class_2_3_building_except_within_sole_occupancy_units || class_9a_healthcare_building || class_9b_building
    if floor_separating_storeys_meets_requirement || floor_frl >= 30/30/30 || fire_protective_covering_on_underside_of_floor
      # Floor meets requirements
    else
      # Take action if floor does not meet requirements
      take_action()
    end
  end

  if class_9c_building && above_motor_vehicle_accommodation_or_storage
    if floor_meets_requirement || floor_frl >= 30/30/30 || fire_protective_covering_on_underside_of_floor
      # Floor meets requirements
    else
      # Take action if floor does not meet requirements
      take_action()
    end
  end
end

# Condition 2
if fire_protected_timber_condition_met
  # Fire-protected timber can be used
end

# Helper methods
def get_required_frl(element, building_class)
  # Retrieve required FRL from tables based on element and building class
end

def get_current_frl(element)
  # Retrieve current FRL of element
end

def take_action
  # Perform necessary actions
end
