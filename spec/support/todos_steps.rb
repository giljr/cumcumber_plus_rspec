# spec/support/todos_steps.rb
module TodosSteps
  #
  # ─── ARRANGE METHODS ─────────────────────────────────────────────────────
  #

  def visiting_the_homepage
    visit root_path
  end

  def create_a_completed_task_with_a_note(note)
    Todo.create!(note: note, done: true)
  end

  def create_a_not_completed_task_with_a_note(note)
    Todo.create!(note: note, done: false)
  end

  #
  # ─── ASSERTION METHODS ───────────────────────────────────────────────────
  #

  def i_should_see_the_completed_tasks_section
    expect(page).to have_css(".completed-tasks")
  end

  def i_should_see_in_the_completed_section_the_task(note)
    within(".completed-tasks") do
      expect(page).to have_content(note)
    end
  end

  def i_should_not_see_in_the_completed_section_the_task(note)
    within(".completed-tasks") do
      expect(page).not_to have_content(note)
    end
  end
end
