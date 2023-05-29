List of C3D14 (aka C2.13) Electricity supply system:
 * If an electricity substation is located within a building, then it must be separated from other parts of the building by construction with an FRL of at least 120/120/120 and have doorways protected with self-closing fire doors with an FRL of at least –/120/30.
 * If a main switchboard is located within the building and sustains emergency equipment operating in the emergency mode, then it must be separated from other parts of the building by construction with an FRL of at least 120/120/120 and have doorways protected with self-closing fire doors with an FRL of at least –/120/30.
 * If electrical conductors supply a substation within the building or a main switchboard covered by the above condition, then they must have a classification according to AS/NZS 3013 of at least WS53W (if subject to vehicle damage) or WS52W (otherwise), or be enclosed/protected by construction with an FRL of at least 120/120/120.
 * If emergency equipment is required in a building and switchboards sustain the electricity supply to the emergency equipment, then the switchboards must have metal partitions separating the emergency equipment switchgear from non-emergency equipment switchgear to minimize the spread of faults.
 * For the purpose of the above condition, emergency equipment includes fire hydrant booster pumps, pumps for automatic sprinkler systems, water spray, chemical fluid suppression systems, pumps for fire hose reels (when the sole means of fire protection), air handling systems for fire and smoke control, emergency lifts, control and indicating equipment, and emergency warning and intercom systems.

def electricity_substation_within_building?
  # Condition (a)
  # Check if the electricity substation is located within a building
  # Return true or false based on the condition
end

def separate_from_building?
  # Condition (a)(i)
  # Check if the substation is separated from other parts of the building by construction with FRL >= 120/120/120
  # Return true or false based on the condition
end

def protect_doorway?
  # Condition (a)(ii)
  # Check if the doorway in the substation construction is protected with a self-closing fire door with FRL >= -/120/30
  # Return true or false based on the condition
end

def main_switchboard_sustains_emergency_equipment?
  # Condition (b)
  # Check if the main switchboard sustains emergency equipment operating in the emergency mode
  # Return true or false based on the condition
end

def separate_from_building_main_switchboard?
  # Condition (b)(i)
  # Check if the main switchboard is separated from other parts of the building by construction with FRL >= 120/120/120
  # Return true or false based on the condition
end

def protect_doorway_main_switchboard?
  # Condition (b)(ii)
  # Check if the doorway in the main switchboard construction is protected with a self-closing fire door with FRL >= -/120/30
  # Return true or false based on the condition
end

def electrical_conductors_within_building?
  # Condition (c)
  # Check if electrical conductors supply a substation within the building or a main switchboard
  # Return true or false based on the condition
end

def valid_classification?
  # Condition (c)(iii)
  # Check if the electrical conductors have a valid classification according to AS/NZS 3013
  # Return true or false based on the condition
end

def enclosed_or_protected?
  # Condition (c)(iv)
  # Check if the electrical conductors are enclosed or protected by construction with FRL >= 120/120/120
  # Return true or false based on the condition
end

def emergency_equipment_required?
  # Condition (d)
  # Check if emergency equipment is required in the building
  # Return true or false based on the condition
end

def metal_partitions_separate_switchboards?
  # Condition (d)
  # Check if metal partitions separate emergency equipment switchgear from non-emergency equipment switchgear
  # Return true or false based on the condition
end

def emergency_equipment_list
  # Condition (e)
  # Return a list of emergency equipment items
end
