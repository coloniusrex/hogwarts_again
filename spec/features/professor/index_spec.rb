require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "When I visit the profesors page, I see a list of professors name/age/specialty." do
    prof_1 = Professor.create(name: "Dr.Fred",
                               age: "45",
                        specialty: "Surgery")

    visit '/professors'
    expect(current_path).to eql('/professors')

    expect(page).to have_content(prof_1.name)
    expect(page).to have_content(prof_1.age)
    expect(page).to have_content("Specialty: #{prof_1.specialty}")
  end
end
