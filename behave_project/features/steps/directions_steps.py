from behave import given, when, then # type: ignore

class Helper:
    def __init__(self, type):
        self.type = type

    def give_directions(self):
        if self.type == "knowledgeable":
            return "Go straight and then turn left after two blocks."
        else:
            return "I'm not sure, please use GPS."

@given('there is a {type} helper on the street')
def step_impl(context, type):
    context.helper = Helper(type=type)

@when('I ask for directions to the football match')
def step_impl(context):
    context.response = context.helper.give_directions()

@then('the helper provides me with "{response}"')
def step_impl(context, response):
    assert context.response == response, f"Expected '{response}', but got '{context.response}'"
