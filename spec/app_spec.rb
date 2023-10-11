require_relative '../lib/app_test'

describe "the login_openai method" do
  it "should return response, and response is not nil" do
    expect(login_openai).not_to be_nil
  end
end