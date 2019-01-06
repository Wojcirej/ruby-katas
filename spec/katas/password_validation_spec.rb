require './katas/password_validation/lib/password_validation'

RSpec.describe "#password_validation" do
  subject { password_validation(password) }

  shared_examples "result" do |password, expected_result|

    context "when password = '#{password}'" do
      let(:password) { password }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", 'fjd3IR9', true
  include_examples "result", 'ghdfj32', false
  include_examples "result", 'DSJKHD23', false
  include_examples "result", 'dsF43', false
  include_examples "result", '4fdg5Fj3', true
  include_examples "result", 'DHSJdhjsU', false
  include_examples "result", 'fjd3IR9.;', false
  include_examples "result", 'fjd3  IR9', false
  include_examples "result", 'djI38D55', true
  include_examples "result", 'a2.d412', false
  include_examples "result", 'JHD5FJ53', false
  include_examples "result", '!fdjn345', false
  include_examples "result", 'jfkdfj3j', false
  include_examples "result", '123', false
  include_examples "result", 'abc', false
  include_examples "result", '123abcABC', true
  include_examples "result", 'ABC123abc', true
  include_examples "result", 'Password123', true
  include_examples "result", "PA9fNIxYy", true
  include_examples "result", "dQCq+7", false
  include_examples "result", "tpuJB+9u8yAJPS", false
  include_examples "result", "7e6Y4QIJzH", true
  include_examples "result", "59WDeZ", true
  include_examples "result", "7xAx4ABpITE", true
  include_examples "result", "jvi3odpn8um5OjgZHp", true
  include_examples "result", "xlYJGjhw8I", true
  include_examples "result", "3dkIy4rC9Wzq", true
  include_examples "result", "F0493MXtD", true
  include_examples "result", "waQn9Y7yh", true
  include_examples "result", "0mioY9PQC", true
  include_examples "result", "T3a", false
  include_examples "result", "ScXCJ2", true
  include_examples "result", "X_CahdST73", false
  include_examples "result", "gHVH5Rk", true
  include_examples "result", "W?twW0C", false
  include_examples "result", "SES8ggY", true
  include_examples "result", "8Ds", false
  include_examples "result", "Qlt0t7obpjy7Pd", true
  include_examples "result", "xNDGKrD1maw0\\vib1", false
  include_examples "result", "5rD1GD6v4G2MV5WQ", true
  include_examples "result", "Q60iH9jFli", true
  include_examples "result", "4ulg0pM_", false
  include_examples "result", "BBa06T0t7Hmx64", true
  include_examples "result", "vIo5WI8p3MT", true
  include_examples "result", "cFs+s\\9E+V15M", false
  include_examples "result", "S1myF-85A7usrsC", false
  include_examples "result", "KRKk0/zpqc88e", false
  include_examples "result", "5kE", false
  include_examples "result", "58Luj", false
  include_examples "result", "sLSakgA-KytQVY0", false
  include_examples "result", "W9j", false
  include_examples "result", "1r!h8WQ", false
  include_examples "result", "W5eerc", true
  include_examples "result", "H0QGLe/uYcb5", false
  include_examples "result", "9d7ok5jOKvbLeIK", true
  include_examples "result", "iE0x", false
  include_examples "result", "NfH1Csg4ZE!NDwWBXO", false
  include_examples "result", "FYja0smngO7WY", true
  include_examples "result", "O4IRWh-nummscBLQ", false
  include_examples "result", "U12QBup3aVqw", true
  include_examples "result", "Adz3YscLTy2rmvi", true
  include_examples "result", "yP7", false
  include_examples "result", "gl3nX5s5Pa", true
  include_examples "result", "yB6y1", false
  include_examples "result", "6dHGn+QyLBuAJm/6a", false
  include_examples "result", "FJi4H6AiwDCRMM", true
  include_examples "result", "wP1XtbzyUqgZmrQ8Jb", true
  include_examples "result", "PvyHokZzbS3jD7f", true
  include_examples "result", "JCZ?O2U6mreM", false
  include_examples "result", "cWP5FMj", true
  include_examples "result", "V5GYSTfU0", true
  include_examples "result", "8ugH6sOA", true
  include_examples "result", "K1nqVFBg8mhAab-k", false
  include_examples "result", "6F9h", false
  include_examples "result", "6RMeoH", true
  include_examples "result", "I7Yj", false
  include_examples "result", "76YDLCS48pdy", true
  include_examples "result", "IGIytpD1XA2uN", true
  include_examples "result", "tHbcXvHgGk-42Gxe3K", false
  include_examples "result", "jOrHrH2si", true
  include_examples "result", "UnncSY0-N1Kw", false
  include_examples "result", "6qf\\BD", false
  include_examples "result", "21h/a2\\KR9liCjR", false
  include_examples "result", "/7fTXOItcK4Wmzki", false
  include_examples "result", "8Mr", false
  include_examples "result", "8k17OFjE", true
  include_examples "result", "Q2oWF+?TiXF96yhO/", false
  include_examples "result", "ZZy1i_18", false
  include_examples "result", "0Yo6SON", true
  include_examples "result", "l0aK4PvMb4wN7", true
  include_examples "result", "hLfWRg9Y\\paf0dz", false
  include_examples "result", "UVt3Z", false
  include_examples "result", "plnBzR0NZG9F6ZSw", true
  include_examples "result", "be1L8Hnx0HDcB8", true
  include_examples "result", "rMPs5wi-r0M9rX7m?", false
  include_examples "result", "P1ROv?Z14", false
  include_examples "result", "tJOz1FvT2rq", true
  include_examples "result", "O5qPV8", true
  include_examples "result", "Rk7pX41U/eFfqVda", false
  include_examples "result", "E6\\9J6/am-41End2P", false
  include_examples "result", "6LVl", false
  include_examples "result", "XYlbJDYE4OE5OcvQAL", true
  include_examples "result", "G40CCUX/4uu", false
  include_examples "result", "7Tn", false
  include_examples "result", "W9h7p+", false
  include_examples "result", "barPui?txC6hS", false
  include_examples "result", "QU4dc8j", true
  include_examples "result", "eN1oV7kKRPcrzUAw", true
  include_examples "result", "v3o-\\0-nfF0n", false
  include_examples "result", "+kL9sC", false
  include_examples "result", "OwLuRNZ1q5MwwNFG", true
  include_examples "result", "8rO", false
  include_examples "result", "O0a", false
  include_examples "result", "2wWSCpgrIJvz", true
  include_examples "result", "9bJ", false
  include_examples "result", "5+P0j1Jxh", false
  include_examples "result", "YDdFJq6j90z", true
  include_examples "result", "z3ePxa", true
end
