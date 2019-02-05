require './katas/abbreviate_two_word_name/lib/abbreviate_two_word_name'

RSpec.describe "#abbreviate_two_word_name" do
  subject { abbreviate_two_word_name(name) }

  shared_examples "result" do |name, expected_result|

    context "when name = '#{name}'" do
      let(:name) { name }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "Sam Harris", "S.H"
  include_examples "result", "Patrick Feenan", "P.F"
  include_examples "result", "Evan Cole", "E.C"
  include_examples "result", "P Favuzzi", "P.F"
  include_examples "result", "David Mendieta", "D.M"
  include_examples "result", "AoVUdlBGAI IgfQiGI", "A.I"
  include_examples "result", "PaowDABH PEXYcPJvBu", "P.P"
  include_examples "result", "zqGiAtKArE xUDdB", "Z.X"
  include_examples "result", "RZFDKpFj sRXuECjYsS", "R.S"
  include_examples "result", "UThhyn WONOQ", "U.W"
  include_examples "result", "AogoJDZF YQHBAkZqP", "A.Y"
  include_examples "result", "eJzrhVbIhe qfejdfY", "E.Q"
  include_examples "result", "ZGnRPP ZelDRvmDpH", "Z.Z"
  include_examples "result", "SKhqOnfk hiQvmenqVh", "S.H"
  include_examples "result", "KpQyJfmW vwVWYwjbL", "K.V"
  include_examples "result", "CKqCyVy zpaVJCgkR", "C.Z"
  include_examples "result", "TYiZQpQZD IpCYXQq", "T.I"
  include_examples "result", "cKxTipai eDxbcrS", "C.E"
  include_examples "result", "PjTesl pnxEUi", "P.P"
  include_examples "result", "wDkIqqin ZPZmR", "W.Z"
  include_examples "result", "JIhCYvour nxXWX", "J.N"
  include_examples "result", "eirGP SajTOlJ", "E.S"
  include_examples "result", "MgqfxJPOK EbPYHMFj", "M.E"
  include_examples "result", "fPDHono epAztu", "F.E"
  include_examples "result", "VXHzg WVuFpqF", "V.W"
  include_examples "result", "rxkkE sdnvvimpEF", "R.S"
  include_examples "result", "BoGUoXz IXLMj", "B.I"
  include_examples "result", "QITzLFYEQX gCAlAGMFFv", "Q.G"
  include_examples "result", "lrsdH wbtntYOTCE", "L.W"
  include_examples "result", "DGMsEsO YqNmv", "D.Y"
  include_examples "result", "tNbqFSF DLkjP", "T.D"
  include_examples "result", "TDWWogvsFI tqKHB", "T.T"
  include_examples "result", "KKyST mmNvWO", "K.M"
  include_examples "result", "cIekZyJLR JaBYsBFihd", "C.J"
  include_examples "result", "QUfPWi QsEHrKvGy", "Q.Q"
  include_examples "result", "wsASN ryBGhjpQPu", "W.R"
  include_examples "result", "BpcTHbEMA UXwyyDToh", "B.U"
  include_examples "result", "krXQuztHh qdcXaloFd", "K.Q"
  include_examples "result", "kBIlKunu SKnEfQ", "K.S"
  include_examples "result", "MWGZuCC ZIiCQjUmrJ", "M.Z"
  include_examples "result", "FNGLc AbfdOMAi", "F.A"
  include_examples "result", "gehPwIe wpBGn", "G.W"
  include_examples "result", "CwhxpriE HRCDIhTUQ", "C.H"
  include_examples "result", "gEThpe sGmpiOPlS", "G.S"
  include_examples "result", "HIeHc vOXXyQ", "H.V"
  include_examples "result", "BZbPeCEVLo dMtEJtmbU", "B.D"
  include_examples "result", "rQjucUQEg OJNrglaTNe", "R.O"
  include_examples "result", "fFisbslfz BFPFnSrv", "F.B"
  include_examples "result", "RLyjKDq dufoJtia", "R.D"
  include_examples "result", "VNaGLt VScWKFGMk", "V.V"
  include_examples "result", "cmDTLMEVdU aVnkJnV", "C.A"
  include_examples "result", "PhhcAk INVnl", "P.I"
  include_examples "result", "LHnuIhyW brjZRqAD", "L.B"
  include_examples "result", "OEvUxy AgPrB", "O.A"
end
