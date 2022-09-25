require "application_system_test_case"

class TruckJobsTest < ApplicationSystemTestCase
  setup do
    @truck_job = truck_jobs(:one)
  end

  test "visiting the index" do
    visit truck_jobs_url
    assert_selector "h1", text: "Truck jobs"
  end

  test "should create truck job" do
    visit truck_jobs_url
    click_on "New truck job"

    fill_in "Job", with: @truck_job.job_id
    fill_in "Truck", with: @truck_job.truck_id
    click_on "Create Truck job"

    assert_text "Truck job was successfully created"
    click_on "Back"
  end

  test "should update Truck job" do
    visit truck_job_url(@truck_job)
    click_on "Edit this truck job", match: :first

    fill_in "Job", with: @truck_job.job_id
    fill_in "Truck", with: @truck_job.truck_id
    click_on "Update Truck job"

    assert_text "Truck job was successfully updated"
    click_on "Back"
  end

  test "should destroy Truck job" do
    visit truck_job_url(@truck_job)
    click_on "Destroy this truck job", match: :first

    assert_text "Truck job was successfully destroyed"
  end
end
