from behave import given, when, then

class Helper:
    def __init__(self, location):
        self.location = location

    def give_directions(self):
        if self.location == "subway exit":
            return "Go straight and then turn left after two blocks."
        else:
            return "I'm not sure, please use GPS."

@given('there is a helper on the street near the subway exit')
def step_impl(context):
    context.helper = Helper(location="subway exit")

@when('I ask for directions to the football match')
def step_impl(context):
    context.response = context.helper.give_directions()

@then('the helper provides me with the direction to the stadium')
def step_impl(context):
    assert context.response == "Go straight and then turn left after two blocks."
