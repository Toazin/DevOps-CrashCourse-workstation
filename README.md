# DevOps CrashCourse - WorkStation

Learning chef and inspec testing.

# Steps
- Start
  - Generator: `chef generate cookbook workstation`
  - Chef Resources Setup:  `nano workstation/recipes/setup.rb`
  - Default Recipe calls setup.rb: `nano workstation/recipes/default.rb` add: `include_recipe 'workstation::setup'`
- Kitchen tests (Inspec):
  - Start: `kitchen init`
  - Modify `.kitchen.yml`: `nano workstation .kitchen.yml` add kitchen config
  - Add inspec Test: Test Inspect below `nano workstation/test/smoke/default/default_test.rb`
- Template
  - run  `chef generate template cookbooks/workstation motd.erb`
  - modify `cookbooks/workstation/template/motd.erb` with `<%= =>` notation
  - modify `cookbooks/workstation/recipes/setup.rb` delete file and add template notation
  
# Commands
- Check if recipes are ok: `sudo chef-client --local-mode workstation/recipes/setup.rb`
- Check if recipes are ok: `sudo chef-client --local-mode -r 'recipe[workstation]'`
- Check syntax : `cookstyle`
- Generate Template: `chef generate template cookbooks/workstation motd.erb`

# Kitchen config Changes:
- Using Docker
- Plataform centos_6.4

# Chef Resources / Cookbook ( recipes/server.rb ) 
- Package `tree`: install
- File `/etc/motd.txt`: create with content and Node variables.
- Template `/etc/motd` for the Generated .erb file.
  
# Test Inspect ( test/smoke/default/default_test.rb )
 - USER: Root user if not Windows
 - PORT: Listen to 80 port
 - PACKAGE: tree installed
 - FILE: /etc/motd.txt is a file

# Resources
- Source Repo: https://gist.github.com/kennonkwok/d22e94b77791a68c13ec8eab9189077d
- Chef
  - Chef Resource:  https://docs.chef.io/resources.html
  - Chef Resource File: https://docs.chef.io/resource_file.html
  - Chef Client Commands: http://doces.chef.io/chef_client.html
  - Chef Cookbooks: http://docs.chef.io/cookbooks.html
  - Chef Cookbook file: https://docs.chef.io/resource_cookbook_file.html
  - Chef Templates: https://docs.chef.io/resource_template.html
  - Chef erb files: https://docs.chef.io/templates.html#variable
- Inspec
  - Inspec File test: https://www.inspec.io/docs/reference/resources/file/
  - Inspect Port test: https://www.inspec.io/docs/reference/resources/port/
  - Inspect command test: https://www.inspec.io/docs/reference/resources/command/
  
