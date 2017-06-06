require_relative 'testrail_ruby_bindings'
require_relative 'secrets'

@client = TestRail::APIClient.new('https://testrail.oblong.com')
@client.user = 'fmorales'
@client.password = 'jacktwyst2000'

def get_projects
  @client.send_get('get_projects')
end

def get_project(project_id)
  @client.send_get("get_project/#{project_id}")
end

def get_tests(run_id)
  @client.send_get("get_tests/#{run_id}")
end

def get_test(test_id)
  @client.send_get("get_test/#{test_id}")
end
