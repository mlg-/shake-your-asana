require "rails_helper"

feature "Yogi can see available poses", %(
  As a yogi, I want to know what poses are available, so I can add them to my sequence!
) do

# Acceptance Criteria
# [X] User can see index of all pose names.
# [] Poses are ordered alphabetically by English name and paginated by 10s.
# [] User can browse poses without being signed in.

  scenario "visitor navigates to pose list" do
    pose_1 = FactoryGirl.create(:pose)
    pose_2 = FactoryGirl.create(:pose, english_name: "Half Moon Pose")

    visit root_path

    click_link("See all poses")

    expect(page).to have_content("All Poses")
    expect(page).to have_content(pose_1.english_name)
    expect(page).to have_content(pose_2.english_name)
  end
end


