require File.expand_path('../support/helpers', __FILE__)

describe_recipe "nvm_test::default" do
  include Helpers::CookbookTest

  it "should install libcurl4" do
    assert_sh "dpkg -s libcurl4 2>&1"
  end

  it "should install curl" do
    assert_sh "dpkg -s curl 2>&1"
  end

end
