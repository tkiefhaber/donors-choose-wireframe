require 'spec_helper'

describe "Creating a project" do

  context "When I visit the homepage" do
    use_vcr_cassette

    before(:each) { visit root_path }

    it "shows a form for creating a new project" do
      page.should have_selector("#new_project")
    end

    it "creates a project from a donors choose url" do
      fill_in "project_proposal_url", with: "http://www.donorschoose.org/project/a-library-for-all-to-enjoy/793053/"
      click_link_or_button "Create Project"
      project = Project.find_by_donors_choose_id("793053")
      current_path.should == new_project_challenge_path(project)
      page.should have_content("Thanks for adopting this project! To kick this party off right, create a new challenge!")
    end
  end

  context "When a project is created for the first time" do
    use_vcr_cassette
    before { visit root_path }

    it "shows a message that the project has been created successfully" do
      fill_in "project_proposal_url", with: "http://www.donorschoose.org/project/a-library-for-all-to-enjoy/793053/"
      click_link_or_button "Create Project"
      current_path.should == new_project_challenge_path(Project.last)
      page.should have_content "Thanks for adopting this project! To kick this party off right, create a new challenge!"
    end
  end

  context "When a project is already in the system" do
    let(:project) { FactoryGirl.create(:project) }
    use_vcr_cassette
    before(:each) { visit root_path }

    it "shows a message that the project already exists" do
      fill_in "project_proposal_url", with: project.proposal_url
      click_link_or_button "Create Project"
      current_path.should == project_path(project)
      page.should have_content "This project already exists. You can contribute to it here!"
    end
  end

  context "Viewing a project" do
    let(:project) { FactoryGirl.create(:project) }

    before(:each) { visit project_path(project) }

    it "shows the basic details for the project" do
      page.should have_image(project.image_url)
      page.should have_content(project.city)
      page.should have_content(project.state_abbr)
      page.should have_content(project.school_name)
    end

  end

end
