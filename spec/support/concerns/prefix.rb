shared_examples 'Prefix' do

  let(:described) { described_class.new 'test', { prefix: 'prefix' } }

  describe "#match?" do
    subject { described.match?(name) }
    context "when name match name with prefix" do
      let(:name) { 'prefix_test'}
      it { should be true }
    end

    context "when name match name without prefix" do
      let(:name) { 'test'}
      it { should be true }
    end

    context "when name do not match" do
      let(:name) { 'something'}
      it { should be false }
    end
  end

  describe "#name_with_prefix" do
    subject { described.name_with_prefix }

    it { should be_eql 'prefix_test' }
  end

  describe "#prefix" do
    subject { described.prefix }

    it { should be_eql 'prefix' }
  end

  describe "#name_without_prefix" do
    let(:described) { described_class.new 'prefix_test', { prefix: 'prefix' } }

    subject { described.name_without_prefix }

    it { should be_eql 'test' }
  end

end
