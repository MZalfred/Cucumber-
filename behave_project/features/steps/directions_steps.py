from behave import given, when, then # type: ignore

# Definitions for the scenario with two helpers offering directions
@given('there are two helpers offering directions')
def step_impl(context):
    # Simulating two helpers with different sets of directions
    context.helpers = {
        "helper1": "Go straight and then turn left after two blocks.",
        "helper2": "Take a right and then the first left."
    }

@when('I ask both helpers for directions to the football match')
def step_impl(context):
    context.directions_received = {helper: info for helper, info in context.helpers.items()}

@then('I should receive two different sets of directions')
def step_impl(context):
    assert len(set(context.directions_received.values())) == 2, "Directions should be different from each helper"

@then('I choose the set of directions that seem more reliable')
def step_impl(context):
    # Simulated logic to choose more reliable directions
    context.chosen_direction = context.helpers["helper1"]  # Assuming the first helper is more reliable
    assert context.chosen_direction == "Go straight and then turn left after two blocks."

# Definitions for scenarios with a knowledgeable helper and limited knowledge helper
@given('there is a knowledgeable helper on the street')
def step_impl(context):
    context.helper = "Go straight and then turn left after two blocks."

@given('there is a helper with limited knowledge on the street')
def step_impl(context):
    context.helper = "Nearby park is straight ahead."

@when('I ask for directions to the football match')
def step_impl(context):
    context.received_directions = context.helper

@then('the helper provides me with "Go straight and then turn left after two blocks."')
def step_impl(context):
    assert context.received_directions == "Go straight and then turn left after two blocks."

@then('the helper provides directions to the nearest landmark instead of the stadium')
def step_impl(context):
    assert context.helper == "Nearby park is straight ahead."

# Definitions for scenarios involving adverse weather conditions
@given('a knowledgeable helper is available at the main intersection')
def step_impl(context):
    context.helper = "Normally, go straight, but take the next left and follow detour signs due to rain."

@given('heavy rainfall has led to the closure of several primary roads')
def step_impl(context):
    context.road_closure = True

@when('I request directions to the nearest football stadium')
def step_impl(context):
    if context.road_closure:
        context.alternative_direction = "Please take the alternate route via Main Street to avoid the closed roads."
    else:
        context.alternative_direction = "Go straight to reach the stadium."

@then('the helper should provide a safe and efficient alternative route that circumvents the closed roads')
def step_impl(context):
    expected_direction = "Please take the alternate route via Main Street to avoid the closed roads."
    assert context.alternative_direction == expected_direction, "Helper did not provide the correct alternative route"
