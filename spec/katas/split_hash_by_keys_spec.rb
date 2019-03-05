require './katas/split_hash_by_keys/lib/split_hash_by_keys'

RSpec.describe "#split_hash_by_keys" do
  subject { split_hash_by_keys(hash, *keys) }

  shared_examples "result" do |hash, keys, expected_result|

    context "when hash = '#{hash}', keys = '#{keys}'" do
      let(:hash) { hash }
      let(:keys) { keys }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  context "when no specified keys in passed Hash" do
    let(:hash) { { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 } }
    let(:keys) { 'b' }

    it "raises an exception" do
      expect { subject }.to raise_error("Specified keys do not exist in passed Hash!")
    end
  end

  include_examples "result", {:a => 1, :b => 2}, :a, [{:a => 1, :b => 2}]
  include_examples "result", { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, [:c, :e], [{:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6}]
  include_examples "result", { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, [:b, :f], [{:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6}]
end
