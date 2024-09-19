# frozen_string_literal: true

require 'rspec'
require_relative '../../../lib/pipeline/workflows/development/compile/compiler'

describe 'Compiler' do
  let(:build_command) { 'swift build' }
  let(:config) { { build_command: build_command } }
  subject(:compiler) { Compiler.new(config) }

  before(:each) do
    allow(compiler).to receive(:system)
  end

  context 'when compiling' do
    it 'it executes the configured command' do
      subject.compile

      expect(subject).to have_received(:system).with(build_command)
    end
  end
end
