rotorua_course = Course.create!(name: "Arikikapakapa", city: "Rotorua")
round = Round.create!(course: rotorua_course)

sam = Player.create!(name: "Sam")
imogen = Player.create!(name: "Imogen")
charlie = Player.create!(name: "Charlie")
milly = Player.create!(name: "Milly")

sam_and_im = Pair.create!
sam_and_im.players = [sam, imogen]

ct_and_milly = Pair.create!
ct_and_milly.players = [charlie, milly]

foursome = Foursome.create!(round: round)
foursome.pairs = [sam_and_im, ct_and_milly]


a1 = Hole.create!(number: 1, course: rotorua_course, par: 4)
a2 = Hole.create!(number: 2, course: rotorua_course, par: 4)
a3 = Hole.create!(number: 3, course: rotorua_course, par: 4)
a4 = Hole.create!(number: 4, course: rotorua_course, par: 4)
a5 = Hole.create!(number: 5, course: rotorua_course, par: 4)
a6 = Hole.create!(number: 6, course: rotorua_course, par: 3)
a7 = Hole.create!(number: 7, course: rotorua_course, par: 5)
a8 = Hole.create!(number: 8, course: rotorua_course, par: 4)
a9 = Hole.create!(number: 9, course: rotorua_course, par: 3)
a10 = Hole.create!(number: 10, course: rotorua_course, par: 5)
a11 = Hole.create!(number: 11, course: rotorua_course, par: 4)
a12 = Hole.create!(number: 12, course: rotorua_course, par: 4)
a13 = Hole.create!(number: 13, course: rotorua_course, par: 4)
a14 = Hole.create!(number: 14, course: rotorua_course, par: 3)
a15 = Hole.create!(number: 15, course: rotorua_course, par: 4)
a16 = Hole.create!(number: 16, course: rotorua_course, par: 4)
a17 = Hole.create!(number: 17, course: rotorua_course, par: 3)
a18 = Hole.create!(number: 18, course: rotorua_course, par: 4)


MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a1)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a2)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a3)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a4)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a5)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a6)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a7)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a8)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a9)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a10)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a11)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a12)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a13)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a14)
MatchPlayHoleWin.create!(round: round, pair: sam_and_im, hole: a15)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a16)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a17)
MatchPlayHoleWin.create!(round: round, pair: ct_and_milly, hole: a18)
