Given("I am on the apps homepage") do
  visit "/"
end

Given("there is a completed task called {string}") do |name|
  @completed_task = Todo.create!(note: name, done: true)
end

Given("there is an incomplete task called {string}") do |name|
  @incomplete_task = Todo.create!(note: name, done: false)
end

When("I submit this completed task") do
  visit "/"
end

When("I submit this incomplete task") do
  visit "/"
end

When("I submit both tasks") do
  visit "/"
end

Then("I should see {string} in the {string} section") do |text, section|
  selector = section.parameterize
  within(:css, "##{selector}, .#{selector}") do
    expect(page).to have_content(text)
  end
end

Then("I should not see {string} in the {string} section") do |text, section|
  selector = section.parameterize
  within(:css, "##{selector}, .#{selector}") do
    expect(page).not_to have_content(text)
  end
end
