# frozen_string_literal: true

require 'config_file'

describe ConfigFile do
  before(:all) do
    @config_file = ConfigFile.new(File.join(ENV['RSPEC_PATH'], '../smoke/aws/vars/aws.basic.yaml'))
  end

  it 'returns the right node count' do
    expect(@config_file.node_count).to eq(5)
  end
end
