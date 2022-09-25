require "test_helper"

class TruckJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_job = truck_jobs(:one)
  end

  test "should get index" do
    get truck_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_job_url
    assert_response :success
  end

  test "should create truck_job" do
    assert_difference("TruckJob.count") do
      post truck_jobs_url, params: { truck_job: { job_id: @truck_job.job_id, truck_id: @truck_job.truck_id } }
    end

    assert_redirected_to truck_job_url(TruckJob.last)
  end

  test "should show truck_job" do
    get truck_job_url(@truck_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_job_url(@truck_job)
    assert_response :success
  end

  test "should update truck_job" do
    patch truck_job_url(@truck_job), params: { truck_job: { job_id: @truck_job.job_id, truck_id: @truck_job.truck_id } }
    assert_redirected_to truck_job_url(@truck_job)
  end

  test "should destroy truck_job" do
    assert_difference("TruckJob.count", -1) do
      delete truck_job_url(@truck_job)
    end

    assert_redirected_to truck_jobs_url
  end
end
