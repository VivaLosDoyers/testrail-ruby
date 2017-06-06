
#
#  This space left blank intentionally
#


def add_result(test_id, opts = {})
  @client.send_post("add_result/#{test_id}", opts)
end

def add_result_for_case(run_id, case_id, opts = {})
  @client.send_post("add_result_for_case/#{run_id}/#{case_id}", opts)
end

def get_test(test_id, opts = {})
  @client.send_get("get_test/#{test_id}", opts)
end

def get_tests(run_id, opts = {})
  @client.send_get("get_tests/#{run_id}", opts)
end

def get_case(case_id, opts = {})
  @client.send_get("get_case/#{case_id}", opts)
end

def get_cases(suite_id, section_id, opts = {})
  @client.send_get("get_cases/#{suite_id}/#{section_id}", opts)
end

def add_case(section_id, opts = {})
  @client.send_post("add_case/#{section_id}", opts)
end

def update_case(case_id, opts = {})
  @client.send_post("update_case/#{case_id}", opts)
end

def delete_case(case_id, opts = {})
  @client.send_post("delete_case/#{case_id}", opts)
end
def get_suite(suite_id, opts = {})
  @client.send_get("get_suite/#{suite_id}", opts)
end

def get_suites(project_id, opts = {})
  @client.send_get("get_suites/#{project_id}", opts)
end

def get_section(section_id, opts = {})
  @client.send_get("get_section/#{section_id}", opts)
end

def get_sections(suite_id, opts = {})
  @client.send_get("get_sections/#{suite_id}", opts)
end

def add_suite(project_id, opts = {})
  @client.send_post("add_suite/#{project_id}", opts)
end

def add_section(suite_id, opts = {})
  @client.send_post("add_section/#{suite_id}", opts)
end

def get_run(run_id, opts = {})
  @client.send_get("get_run/#{run_id}", opts)
end

def get_runs(project_id, plan_id, opts = {})
  @client.send_get("get_runs/#{project_id}/#{plan_id}", opts)
end

def add_run(suite_id, opts = {})
  @client.send_post("add_run/#{suite_id}", opts)
end

def close_run(run_id, opts = {})
  @client.send_post("close_run/#{run_id}", opts)
end

def get_plan(plan_id, opts = {})
  @client.send_get("get_plan/#{plan_id}", opts)
end

def get_plans(project_id, opts = {})
  @client.send_get("get_plans/#{project_id}", opts)
end

def add_plan(project_id, opts = {})
  @client.send_post("add_plan/#{project_id}", opts)
end

def add_plan_entries(plan_id, opts = {})
  @client.send_post("add_plan_entries/#{plan_id}", opts)
end

def close_plan(plan_id, opts = {})
  @client.send_post("close_plan/#{plan_id}", opts)
end

def get_milestone(milestone_id, opts = {})
  @client.send_get("get_milestone/#{milestone_id}", opts)
end

def get_milestones(project_id, opts = {})
  @client.send_get("get_milestones/#{project_id}", opts)
end

def add_milestone(project_id, opts = {})
  @client.send_post("add_milestone/#{project_id}", opts)
end

def get_project(project_id, opts = {})
  @client.send_get("get_project/#{project_id}", opts)
end

def get_projects(opts = {})
  @client.send_get("get_projects", opts)
end