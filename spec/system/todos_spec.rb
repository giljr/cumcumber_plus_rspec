# spec/system/todos_spec.rb
require "rails_helper"

RSpec.describe "Displaying completed tasks", type: :system do
  before do
    driven_by(:rack_test)
  end

  context "When visiting the homepage" do
    before do
      visiting_the_homepage
    end

    it "I should see the completed tasks section" do
      i_should_see_the_completed_tasks_section
    end

    context "Test 1: create a completed task with a note" do
      let!(:completed_task) { create_a_completed_task_with_a_note("Clean Car") }

      before do
        visiting_the_homepage
      end

      it "I should see in the completed section the task (note)" do
        i_should_see_in_the_completed_section_the_task("Clean Car")
      end
    end

    context "Test 2: create an incomplete task with a note" do
      let!(:incomplete_task) { create_a_not_completed_task_with_a_note("Study Ruby") }

      before do
        visiting_the_homepage
      end

      it "I should not see in the completed section the task (note)" do
        i_should_not_see_in_the_completed_section_the_task("Study Ruby")
      end
    end
  end
end
