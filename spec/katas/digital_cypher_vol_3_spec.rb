require './katas/digital_cypher_vol_3/lib/digital_cypher_vol_3'

RSpec.describe "#digital_cypher_vol_3" do
  subject { digital_cypher_vol_3(message, code) }

  shared_examples "result" do |message, code, expected_result|

    context "when '#{message}', '#{code}'" do
      let(:message) { message }
      let(:code) { code }

      example "returns '#{expected_result}'" do
        expect(subject).to eq(expected_result)
      end
    end
  end

  include_examples "result", "scout", [20, 12, 18, 30, 21], 1939
  include_examples "result", "masterpiece", [ 14, 10, 22, 29, 6, 27, 19, 18, 6, 12, 8], 1939
  include_examples "result", "nomoretears", [15, 17, 14, 17, 19, 7, 21, 7, 2, 20, 20], 12
  include_examples "result", "fmfimgnzkacp", [10, 17, 11, 14, 17, 14, 19, 30, 15, 6, 8, 20], 4455475
  include_examples "result", "abcdefg", [2, 4, 6, 8, 10, 12, 8], 123456
  include_examples "result", "dziwyaphimv", [8, 35, 12, 28, 33, 5, 25, 11, 14, 21, 26], 49358
  include_examples "result", "vkxhmwloezdgfglnpdflmw", [28, 17, 27, 17, 17, 29, 18, 18, 14, 30, 10, 13, 9, 16, 16, 20, 22, 7, 15, 16, 19, 29], 66394
  include_examples "result", "szxgcshjodqykwqomoaazjhhq", [24, 29, 29, 10, 8, 22, 13, 13, 20, 7, 22, 28, 16, 26, 22, 18, 18, 18, 6, 4, 31, 13, 13, 11, 22], 53
  include_examples "result", "upnxjgqcgexj", [30, 18, 19, 28, 15, 9, 26, 5, 12, 9, 29, 12], 925452
  include_examples "result", "sjvajtzrryl", [27, 19, 24, 1, 15, 28, 35, 20, 18, 30, 20], 89205
  include_examples "result", "zylhqriwwdnosac", [34, 29, 21, 12, 22, 18, 16, 31, 27, 13, 18, 20, 19, 8, 11], 8494507
  include_examples "result", "royedujbevocgzehsmbzlh", [25, 22, 32, 12, 11, 28, 17, 9, 12, 29, 22, 10, 14, 33, 12, 15, 26, 20, 9, 33, 19, 15], 7
  include_examples "result", "kiczpxgfzrbnaaltiqmqn", [19, 17, 11, 34, 24, 32, 15, 14, 34, 26, 10, 22, 9, 9, 20, 28, 17, 25, 21, 25, 22], 8
  include_examples "result", "urpvywakdedqkbm", [23, 26, 17, 24, 33, 24, 3, 19, 5, 7, 12, 18, 13, 10, 14], 281
  include_examples "result", "opcjejubozwrgmribkqfhbdxynx", [20, 21, 8, 15, 10, 15, 26, 7, 20, 31, 28, 23, 12, 18, 23, 14, 7, 16, 22, 11, 13, 7, 9, 29, 30, 19, 29], 5
  include_examples "result", "xmetfftuqbwqpzym", [30, 18, 10, 26, 9, 15, 26, 26, 22, 8, 26, 26, 22, 31, 30, 19], 655639
  include_examples "result", "qinhhausgtywjdkvnyigl", [18, 14, 17, 10, 16, 9, 22, 24, 10, 22, 33, 31, 11, 9, 14, 24, 22, 33, 10, 12, 15], 153288
  include_examples "result", "jszehbfvivymipxcdi", [16, 25, 32, 11, 14, 8, 12, 28, 15, 28, 31, 19, 15, 22, 30, 9, 10, 15], 6
  include_examples "result", "jmsmhlukakqccmeg", [17, 20, 26, 20, 15, 19, 28, 18, 8, 18, 24, 10, 10, 20, 12, 14], 7
  include_examples "result", "onvagelrmmmef", [17, 22, 29, 3, 15, 12, 14, 26, 20, 15, 21, 12, 8], 287
  include_examples "result", "wmpmvuzncljbuvfdgvuslezzpr", [27, 22, 17, 19, 23, 25, 35, 18, 12, 13, 16, 3, 25, 31, 10, 13, 8, 28, 22, 23, 21, 9, 35, 27, 22, 19], 4916149
  include_examples "result", "oqfwlddapccvziyujz", [19, 19, 11, 32, 15, 8, 6, 6, 25, 6, 7, 24, 31, 18, 28, 25, 12, 31], 42593
  include_examples "result", "hrmgqujobglldussoezeyptvfe", [9, 21, 22, 13, 18, 22, 13, 24, 8, 8, 13, 15, 13, 27, 20, 20, 18, 14, 32, 6, 26, 19, 29, 28, 7, 6], 13961
  include_examples "result", "lcprkqjxliqmpwzgxkoczn", [17, 7, 17, 23, 17, 21, 11, 29, 16, 10, 22, 19, 20, 24, 31, 11, 25, 16, 21, 7, 27, 19], 5415641
  include_examples "result", "xysapgmslnrsc", [25, 26, 20, 2, 17, 8, 14, 20, 13, 15, 19, 20, 4], 1
  include_examples "result", "ozdwcrkimesxhn", [17, 28, 6, 25, 5, 20, 13, 11, 15, 7, 21, 26, 10, 16], 2
  include_examples "result", "ygaemrtfsqkntpbljtino", [25, 7, 1, 5, 13, 18, 20, 6, 19, 17, 11, 14, 20, 16, 2, 12, 10, 20, 9, 14, 15], 0
  include_examples "result", "ovzzivytdqutgkpjjhsieyjmbr", [24, 23, 30, 35, 10, 26, 34, 21, 8, 26, 22, 24, 16, 12, 20, 19, 11, 12, 28, 10, 9, 34, 11, 17, 11, 19], 914
  include_examples "result", "pfhytjnprkceyqszzwzgum", [21, 7, 11, 29, 20, 14, 19, 17, 21, 15, 3, 9, 30, 18, 22, 30, 26, 27, 31, 8, 24, 17], 513404
  include_examples "result", "livtmypymlwjcqphgjzxfhus", [18, 9, 23, 24, 19, 25, 17, 29, 19, 12, 24, 14, 9, 17, 17, 12, 13, 10, 27, 28, 12, 8, 22, 23], 6014
  include_examples "result", "ubitprpoinbzxtshtwacrfldaqb", [24, 5, 12, 23, 19, 21, 19, 18, 12, 17, 5, 29, 27, 23, 22, 11, 23, 26, 4, 6, 21, 9, 15, 7, 4, 20, 5], 3
  include_examples "result", "ursycntlocsnpzvb", [22, 22, 22, 27, 4, 15, 24, 15, 17, 4, 20, 18, 19, 28, 23, 3], 14321
  include_examples "result", "vzpkrunzbbaicahqsycbwxamdlh", [27, 26, 21, 11, 23, 21, 19, 26, 7, 2, 6, 9, 8, 1, 13, 17, 24, 25, 8, 2, 28, 24, 6, 13, 9, 12, 13], 50
  include_examples "result", "opireuzndihwxchsr", [20, 25, 18, 23, 14, 30, 31, 23, 13, 14, 17, 32, 29, 12, 17, 24, 27], 599
  include_examples "result", "adwmyqwcmete", [8, 6, 28, 21, 25, 17, 28, 10, 15, 10, 28, 5], 7258005
  include_examples "result", "dpitzfupeymlbbrrdonqaxckkgd", [12, 23, 13, 29, 29, 6, 29, 23, 9, 34, 16, 12, 10, 9, 22, 27, 7, 15, 22, 24, 5, 33, 6, 11, 19, 14, 8], 874930
  include_examples "result", "ttzmwspodypghjvlnn", [21, 21, 27, 14, 24, 20, 17, 16, 5, 26, 17, 8, 9, 11, 23, 13, 15, 15], 1
  include_examples "result", "zjpnzelfmkx", [29, 11, 18, 23, 30, 8, 13, 8, 22, 15, 27], 31294
  include_examples "result", "ngvydpqohmfkbyfulrvs", [19, 16, 25, 27, 5, 21, 26, 18, 10, 14, 11, 20, 5, 27, 7, 26, 21, 21, 24, 20], 59321
  include_examples "result", "vrcwfymianyzbxnacajbpijlud", [29, 22, 11, 25, 15, 33, 20, 13, 9, 16, 34, 34, 9, 28, 22, 3, 12, 9, 17, 6, 24, 11, 19, 20, 28, 8], 748298
  include_examples "result", "cptbkrnvoregp", [6, 24, 21, 6, 13, 18, 17, 30, 16, 22, 7, 7, 19], 381420
  include_examples "result", "lbhsmwqiobdrqayearphtc", [18, 2, 11, 24, 18, 29, 17, 12, 20, 7, 10, 18, 20, 6, 30, 11, 1, 21, 21, 13, 26, 3], 60355
  include_examples "result", "mbxvhplityuj", [21, 11, 33, 25, 15, 16, 14, 17, 29, 34, 24, 17], 8993702
  include_examples "result", "hhvawhbqelktyuetgaxkiow", [15, 10, 28, 1, 32, 15, 4, 23, 5, 21, 18, 22, 31, 21, 14, 27, 9, 7, 24, 20, 16, 17, 29], 72609
  include_examples "result", "pkmkrfzcqtiaiaukzqwlys", [25, 19, 19, 17, 27, 14, 32, 9, 26, 28, 15, 7, 18, 9, 27, 17, 35, 25, 29, 18, 34, 27], 9866
  include_examples "result", "xpihsbcnyqqdrywcfzpmupe", [25, 25, 13, 17, 20, 11, 7, 23, 26, 26, 21, 13, 19, 34, 27, 12, 7, 35, 20, 22, 22, 25, 9], 1949
  include_examples "result", "vjgrwyfjbxchnkakd", [30, 11, 14, 18, 31, 26, 13, 10, 10, 25, 10, 8, 22, 12, 8, 11, 12], 8170
  include_examples "result", "jskfrwlejdgyye", [18, 25, 13, 14, 24, 25, 20, 11, 12, 12, 13, 27, 33, 11], 862
  include_examples "result", "oltpcpruxgyijnxpykju", [16, 16, 25, 24, 5, 19, 19, 25, 29, 15, 27, 12, 11, 18, 29, 24, 27, 14, 11, 25], 145823
  include_examples "result", "hsrebtdzqrgpkzlitchbxsgpvx", [11, 22, 21, 8, 5, 23, 7, 29, 20, 21, 10, 19, 14, 29, 15, 12, 23, 6, 11, 5, 27, 22, 10, 19, 25, 27], 3
  include_examples "result", "sbifcawfwyjyrmdmnmqaxkitphb", [26, 9, 14, 12, 3, 2, 24, 13, 30, 30, 16, 25, 19, 14, 11, 20, 19, 19, 17, 2, 25, 18, 16, 25, 22, 8, 3], 7756011
  include_examples "result", "vwbgegunbmfwrxifkd", [24, 26, 4, 10, 7, 10, 23, 17, 4, 16, 8, 26, 20, 27, 11, 9, 13, 7], 23
  include_examples "result", "xxjyoogfcrmvsfwgtjpcyuuthid", [30, 31, 13, 31, 22, 18, 13, 13, 6, 24, 20, 25, 25, 13, 26, 13, 27, 13, 22, 10, 28, 27, 28, 23, 14, 16, 7], 673
  include_examples "result", "glrtpufeuky", [12, 20, 23, 28, 21, 29, 11, 13, 26, 19, 30], 58
  include_examples "result", "vdqrvemfuezxq", [30, 11, 17, 22, 30, 12, 13, 10, 29, 12, 26, 28, 25], 8704
  include_examples "result", "vcqixnmriflgnldoiyvwafup", [29, 7, 22, 17, 28, 22, 20, 22, 14, 14, 16, 15, 21, 16, 9, 23, 13, 33, 29, 27, 6, 14, 25, 24], 745848
  include_examples "result", "hvyupiyadwukxoekhtsrnqotx", [14, 27, 28, 22, 22, 14, 28, 2, 10, 28, 24, 12, 30, 20, 8, 12, 14, 25, 22, 19, 20, 22, 18, 21, 30], 6531
  include_examples "result", "rlfibxxbitunqtaf", [24, 12, 10, 13, 8, 24, 28, 6, 15, 20, 25, 18, 23, 20, 5, 10], 6044
  include_examples "result", "dslynqcbyabextgdvrxmti", [9, 23, 20, 31, 20, 22, 7, 10, 31, 7, 7, 9, 32, 26, 13, 9, 26, 26, 30, 19, 25, 13], 54866
  include_examples "result", "efuhjarakmtew", [8, 6, 27, 13, 12, 4, 18, 7, 16, 15, 23, 5, 29], 30652
  include_examples "result", "kptnwwulwufxxephoryt", [15, 22, 26, 18, 29, 29, 25, 18, 29, 25, 12, 30, 28, 11, 22, 12, 21, 24, 29, 26], 466
  include_examples "result", "hmjhwdumcsvsirzfxpelgkfvtb", [13, 20, 15, 15, 28, 11, 26, 20, 8, 26, 27, 26, 14, 25, 31, 13, 29, 23, 10, 19, 12, 18, 11, 29, 25, 9], 57
  include_examples "result", "fdcrjevssqqtbfhbmgzlzzl", [10, 13, 7, 27, 14, 14, 26, 28, 23, 26, 21, 29, 6, 15, 12, 11, 17, 16, 30, 21, 30, 35, 16], 49
  include_examples "result", "xuzkhndbzpyexmlagufqgww", [32, 30, 27, 12, 15, 18, 13, 10, 35, 17, 26, 12, 28, 22, 20, 10, 8, 22, 13, 21, 16, 31, 32], 8911749
  include_examples "result", "ublwzixursbznmgqa", [22, 9, 16, 32, 27, 16, 28, 30, 19, 26, 6, 35, 15, 20, 11, 26, 2], 1749
  include_examples "result", "xthwcpiqprdguhoecsgnen", [25, 21, 12, 31, 9, 20, 10, 18, 20, 26, 10, 11, 22, 9, 19, 13, 9, 23, 8, 15, 9, 22], 114864
  include_examples "result", "hmibxiludjxonxzescggmu", [15, 17, 17, 9, 28, 17, 19, 25, 12, 17, 28, 23, 21, 28, 34, 12, 23, 11, 14, 11, 21, 28], 748
  include_examples "result", "qeosxzlavygnrhgkxk", [19, 12, 21, 21, 31, 32, 14, 8, 28, 27, 14, 20, 20, 15, 13, 13, 31, 17], 276
  include_examples "result", "ejifvkpgdydmguxaeqcqhks", [11, 16, 15, 12, 28, 17, 22, 13, 10, 31, 10, 19, 13, 27, 30, 7, 11, 23, 9, 23, 14, 17, 25], 6
  include_examples "result", "onpxrbvvtjuyfh", [16, 17, 17, 27, 19, 5, 23, 25, 21, 13, 22, 28, 7, 11], 13
  include_examples "result", "jsmwtsitygbhqrevtxlqgo", [16, 25, 21, 29, 29, 27, 15, 26, 33, 13, 11, 16, 23, 24, 13, 28, 29, 32, 18, 23, 15, 21], 668698
  include_examples "result", "iamxofislyubtrqe", [16, 8, 19, 30, 22, 13, 15, 25, 19, 32, 27, 8, 27, 25, 23, 11], 7766
  include_examples "result", "xoifnvympkmoghuzamftgelq", [26, 21, 9, 15, 18, 26, 25, 15, 22, 11, 22, 19, 11, 8, 23, 32, 1, 22, 10, 24, 7, 7, 18, 17], 2609440
  include_examples "result", "tkuplqlgfqorgwhnf", [23, 19, 28, 17, 18, 17, 17, 10, 14, 24, 16, 24, 7, 28, 11, 22, 13], 3871605
  include_examples "result", "bprmfweqtkmurnawbcdox", [6, 22, 22, 19, 10, 29, 9, 23, 24, 17, 17, 27, 22, 20, 5, 29, 6, 9, 8, 21, 28], 46
  include_examples "result", "bdqknavfaipcvklyps", [7, 7, 19, 19, 22, 4, 27, 11, 4, 11, 24, 11, 25, 16, 17, 28, 18, 27], 5328835
  include_examples "result", "gmixqoinfwsuvo", [9, 22, 13, 26, 26, 19, 11, 23, 10, 25, 28, 25, 24, 24], 294
  include_examples "result", "gmkfvexapnwdpaoqdughlzkj", [9, 13, 14, 13, 26, 9, 30, 3, 16, 17, 30, 8, 20, 7, 17, 17, 7, 28, 11, 12, 18, 28, 11, 13], 2037446
  include_examples "result", "yescbnkrgeumtustqvvxdpo", [34, 8, 22, 12, 5, 17, 20, 21, 10, 14, 24, 16, 29, 24, 22, 29, 20, 25, 31, 27, 7, 25, 18], 933
  include_examples "result", "vilewpmerzzxwwykraohjxes", [24, 15, 19, 10, 32, 18, 19, 12, 23, 35, 28, 30, 30, 28, 34, 13, 24, 8, 20, 17, 12, 30, 12, 24], 26759
  include_examples "result", "ykwdmfcezutbcdphlvj", [34, 12, 24, 8, 13, 10, 6, 14, 27, 22, 24, 2, 7, 7, 25, 9, 13, 26, 10], 9114043
  include_examples "result", "yqnwxcigbbevqsygaljpe", [30, 24, 16, 25, 29, 8, 16, 9, 4, 7, 10, 29, 19, 21, 30, 12, 8, 14, 12, 21, 10], 57225
  include_examples "result", "rsoengkqbtb", [22, 19, 19, 5, 18, 7, 15, 17, 6, 20, 6], 40
  include_examples "result", "laizksrknmlyodfcfuv", [21, 7, 17, 26, 13, 23, 27, 17, 22, 13, 14, 29, 24, 10, 14, 3, 8, 25, 31], 968024
  include_examples "result", "mgdgcjesqfpvlibvxedvapohzp", [22, 10, 5, 16, 6, 11, 14, 22, 18, 15, 19, 23, 21, 12, 3, 31, 27, 6, 13, 25, 2, 25, 18, 9, 35, 19], 931
  include_examples "result", "xaifrgybaxtdqjdmnwp", [32, 10, 11, 13, 21, 13, 29, 10, 10, 26, 27, 7, 23, 14, 12, 22, 16, 30, 19], 8927364
  include_examples "result", "tcznrqwmihiaskkgstsux", [21, 10, 26, 21, 26, 20, 24, 20, 9, 15, 17, 4, 20, 18, 11, 14, 27, 23, 20, 28, 24], 170783
  include_examples "result", "kxhhvgffucdaawgjl", [14, 29, 15, 10, 25, 12, 13, 8, 24, 8, 11, 3, 4, 28, 14, 12, 15], 3572
  include_examples "result", "lxbqfklzeqthxolufpwjo", [15, 30, 7, 17, 6, 12, 15, 32, 10, 17, 20, 9, 27, 21, 17, 21, 6, 17, 26, 16, 20], 365001
  include_examples "result", "oprnecmraxzilwmy", [24, 25, 27, 23, 14, 12, 22, 27, 10, 33, 35, 18, 21, 32, 22, 34], 9
  include_examples "result", "dxeyhhsjnvyzlnsl", [11, 29, 12, 30, 15, 13, 26, 15, 21, 27, 32, 31, 19, 19, 26, 17], 75
  include_examples "result", "ddwehdyhpljvuax", [11, 11, 32, 9, 15, 11, 34, 12, 23, 19, 19, 26, 28, 8, 33], 7794
  include_examples "result", "fkocxmziudppqwjtewqvzujzysk", [14, 18, 15, 3, 32, 20, 26, 9, 29, 11, 16, 16, 25, 30, 10, 20, 13, 30, 17, 22, 34, 28, 10, 26, 33, 26, 11], 8700
  include_examples "result", "lonjyxqhfskw", [17, 22, 19, 17, 30, 31, 22, 15, 11, 26, 16, 30], 57
  include_examples "result", "fyrgikxonkicujlqylhjferd", [13, 30, 21, 7, 16, 16, 27, 15, 21, 16, 12, 3, 28, 15, 15, 17, 32, 17, 11, 10, 13, 10, 21, 4], 7530
  include_examples "result", "rmimnjnzhwhf", [23, 15, 10, 18, 16, 11, 19, 28, 9, 28, 10, 7], 521
  include_examples "result", "agfojsyfupkeihxh", [9, 7, 9, 17, 14, 27, 25, 9, 23, 20, 19, 5, 12, 10, 28, 16], 80324
  include_examples "result", "mwkskfilslgdteafjojnehjy", [20, 29, 12, 21, 20, 13, 15, 13, 21, 21, 14, 10, 21, 7, 10, 13, 16, 16, 12, 23, 12, 14, 11, 27], 76129
  include_examples "result", "wsrmczesmjme", [25, 23, 19, 21, 11, 28, 7, 21, 17, 11, 21, 13], 2418822
  include_examples "result", "zqvdxourkohkdr", [31, 20, 27, 7, 29, 18, 26, 21, 16, 18, 13, 14, 9, 21], 53
  include_examples "result", "ihtdowzyrwhevwvfb", [10, 8, 22, 5, 15, 25, 27, 25, 20, 24, 8, 7, 23, 23, 24, 7, 2], 102
  include_examples "result", "fnqglhohzctyfxwyyesrs", [13, 21, 19, 16, 14, 14, 18, 15, 33, 5, 29, 27, 12, 27, 30, 32, 27, 14, 21, 24, 22], 7729263
  include_examples "result", "swyddlxjitu", [20, 24, 31, 4, 5, 13, 30, 10, 10, 21, 27], 1160
  include_examples "result", "kxqhivqjzbptmdrjugcrqjfuwno", [17, 28, 23, 12, 15, 26, 23, 14, 32, 6, 22, 24, 19, 8, 24, 14, 27, 11, 9, 22, 23, 14, 12, 25, 29, 18, 21], 64
  include_examples "result", "onrdfebvoauvewxmakvgpsmt", [19, 18, 22, 8, 10, 9, 6, 26, 19, 5, 25, 26, 9, 27, 28, 17, 5, 15, 26, 11, 20, 23, 17, 24], 4
  include_examples "result", "ufojglgboaczsktjxkhdpvq", [26, 9, 17, 10, 11, 15, 12, 5, 17, 1, 7, 29, 24, 14, 22, 10, 28, 14, 13, 7, 18, 22, 21], 532043
  include_examples "result", "jgpcwzeqvybyvmhyaedjitkl", [15, 12, 21, 8, 28, 31, 10, 22, 27, 30, 7, 30, 27, 18, 13, 30, 6, 10, 9, 15, 14, 25, 16, 17], 5
  include_examples "result", "ougonymilxncm", [24, 25, 15, 16, 20, 34, 17, 17, 13, 30, 23, 7, 21], 94816
  include_examples "result", "qtklwmkmsanec", [25, 23, 20, 13, 23, 20, 11, 21, 22, 10, 15, 5, 10], 8391070
  include_examples "result", "lzoqmjdmzkzngjqtutycafyig", [21, 35, 18, 26, 22, 13, 13, 22, 29, 20, 35, 17, 16, 19, 20, 29, 30, 23, 34, 12, 4, 15, 34, 12, 16], 993
  include_examples "result", "vdsifokfeyj", [25, 5, 21, 14, 12, 24, 14, 7, 7, 30, 16], 312569
  include_examples "result", "kijiwogcwirhtbpfu", [14, 11, 10, 15, 28, 17, 8, 6, 25, 9, 24, 13, 22, 3, 19, 8, 21], 3206521
  include_examples "result", "ubfgoyeembpijqrxwcmslh", [27, 11, 9, 13, 24, 28, 11, 14, 16, 8, 25, 12, 16, 26, 21, 30, 32, 6, 19, 28, 15, 14], 693
  include_examples "result", "ahjcexqsojgulrdozfqpivrvykh", [8, 15, 11, 10, 12, 25, 24, 26, 16, 17, 14, 22, 19, 25, 5, 22, 33, 7, 24, 23, 10, 29, 25, 23, 32, 18, 9], 771
  include_examples "result", "rvtqucjzlihpcmgwfva", [25, 24, 28, 24, 23, 11, 17, 28, 20, 16, 10, 24, 10, 15, 15, 30, 8, 30, 8], 728
  include_examples "result", "goolvripnebbgyzxktrmhgman", [14, 20, 22, 19, 27, 25, 16, 21, 21, 12, 7, 9, 14, 30, 33, 31, 16, 27, 25, 18, 15, 14, 18, 8, 21], 757
  include_examples "result", "zqmbnwsfkfibhzlkakitfmgxbc", [27, 22, 18, 2, 15, 28, 24, 6, 12, 11, 14, 2, 9, 31, 17, 11, 2, 16, 14, 20, 7, 18, 12, 24, 3, 8], 1550
  include_examples "result", "vltswsvgxahlqkojr", [26, 16, 24, 23, 27, 23, 26, 11, 28, 5, 12, 16, 21, 15, 19, 14, 22], 4
  include_examples "result", "zfukcfmrubh", [29, 9, 25, 17, 3, 8, 15, 21, 24, 6, 14], 3346022
  include_examples "result", "wckywhmomqwgfmidjnekr", [28, 7, 19, 30, 23, 13, 17, 23, 18, 17, 28, 11, 14, 18, 9, 9, 14, 22, 10, 11, 23], 54850
  include_examples "result", "mqsugsbmxdrivfvzozymcwv", [18, 21, 26, 23, 11, 23, 7, 17, 31, 6, 22, 13, 27, 10, 29, 28, 19, 30, 30, 17, 10, 25, 26], 547244
  include_examples "result", "cvsnxrugkvqby", [10, 27, 22, 18, 25, 26, 28, 12, 14, 26, 18, 10, 32], 753418
  include_examples "result", "hzuncevklebwajlpodma", [9, 27, 29, 19, 5, 6, 23, 19, 17, 7, 3, 24, 9, 15, 14, 17, 16, 12, 18, 3], 11852
  include_examples "result", "ufgbwjraqbefivorelila", [25, 10, 11, 6, 27, 14, 22, 5, 21, 6, 9, 10, 13, 26, 19, 22, 9, 16, 13, 16, 5], 4
  include_examples "result", "mtpvnswkypiqosanggm", [21, 27, 22, 29, 17, 21, 25, 19, 32, 22, 16, 20, 17, 21, 9, 21, 13, 14, 16], 8767322
  include_examples "result", "edbgiocosfrzrnlzkrw", [10, 5, 9, 11, 14, 16, 10, 19, 24, 7, 25, 30, 23, 15, 19, 30, 16, 19, 30], 5174
  include_examples "result", "rxteagqysxkgjj", [20, 26, 22, 7, 3, 9, 19, 27, 21, 26, 13, 9, 12, 12], 2
end
