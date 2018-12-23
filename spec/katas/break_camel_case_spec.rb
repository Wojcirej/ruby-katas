require './katas/break_camel_case/lib/break_camel_case'

RSpec.describe "#break_camel_case" do
  subject { break_camel_case(camel_case_string) }

  shared_examples "result" do |input, expected_result|

    context "when input = '#{input}'" do
      let(:camel_case_string) { input }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "nextComePartSmall", "next Come Part Small"
  include_examples "result", "comeLifeLittle", "come Life Little"
  include_examples "result", "beGoSmallThink", "be Go Small Think"
  include_examples "result", "ownSeeComeUse", "own See Come Use"
  include_examples "result", "verbsWeekOld", "verbs Week Old"
  include_examples "result", "littleOldFact", "little Old Fact"
  include_examples "result", "companyLookSeemChild", "company Look Seem Child"
  include_examples "result", "useDoSmallGroupPoint", "use Do Small Group Point"
  include_examples "result", "makeHighCallImportantFirst", "make High Call Important First"
  include_examples "result", "doSameCompany", "do Same Company"
  include_examples "result", "earlyLargeLeaveAdjectivesGive", "early Large Leave Adjectives Give"
  include_examples "result", "lookBadTryThink", "look Bad Try Think"
  include_examples "result", "oldFew", "old Few"
  include_examples "result", "sameLastFirstNumber", "same Last First Number"
  include_examples "result", "tellVerbsMake", "tell Verbs Make"
  include_examples "result", "makeHandSameWorld", "make Hand Same World"
  include_examples "result", "publicGet", "public Get"
  include_examples "result", "thingSeem", "thing Seem"
  include_examples "result", "haveSameTryImportant", "have Same Try Important"
  include_examples "result", "differentThink", "different Think"
  include_examples "result", "seemGoCallRight", "seem Go Call Right"
  include_examples "result", "beBadKnowWomanNouns", "be Bad Know Woman Nouns"
  include_examples "result", "comeEarlyLarge", "come Early Large"
  include_examples "result", "lastWayEye", "last Way Eye"
  include_examples "result", "greatBeMan", "great Be Man"
  include_examples "result", "seeGetLeaveNounsTake", "see Get Leave Nouns Take"
  include_examples "result", "useLittleCallSame", "use Little Call Same"
  include_examples "result", "tryTry", "try Try"
  include_examples "result", "ableAble", "able Able"
  include_examples "result", "findWayNew", "find Way New"
  include_examples "result", "takeWomanSmall", "take Woman Small"
  include_examples "result", "leaveSameBadMakeSay", "leave Same Bad Make Say"
  include_examples "result", "pointNewEyeComeCompany", "point New Eye Come Company"
  include_examples "result", "handAskDo", "hand Ask Do"
  include_examples "result", "verbsKnow", "verbs Know"
  include_examples "result", "smallYearTryHave", "small Year Try Have"
  include_examples "result", "leaveHandYoung", "leave Hand Young"
  include_examples "result", "firstWeekAbleOld", "first Week Able Old"
  include_examples "result", "manSeemSeeGood", "man Seem See Good"
  include_examples "result", "feelLeave", "feel Leave"
  include_examples "result", "differentLastPointChild", "different Last Point Child"
  include_examples "result", "beFactEarlyAbleWant", "be Fact Early Able Want"
  include_examples "result", "leaveWeekAdjectivesProblem", "leave Week Adjectives Problem"
  include_examples "result", "partLeave", "part Leave"
  include_examples "result", "adjectivesRightGoYoungBe", "adjectives Right Go Young Be"
  include_examples "result", "womanGoodPublic", "woman Good Public"
  include_examples "result", "highGovernmentProblem", "high Government Problem"
  include_examples "result", "rightDoSay", "right Do Say"
  include_examples "result", "giveBe", "give Be"
  include_examples "result", "goWantGood", "go Want Good"
end
