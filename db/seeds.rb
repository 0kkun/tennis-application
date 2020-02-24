
# rake db:seed

Player.create!(
  [
    {
      name:  'Rafael Nadal',
      name_jp:  'ラファエル・ナダル',
      name_etc: 'R.Nadal',
    },
    {
      name:  'Roger Federer',
      name_jp:  'ロジャー・フェデラー',
      name_etc: 'R.Federer',
    },
    {
      name:  'Novak Djokovic',
      name_jp:  'ノバク・ジョコビッチ',
      name_etc: 'N.Djokovic',
    },
    {
      name:  'Daniil Medvedev',
      name_jp:  'ダニル・メドベージェフ',
      name_etc: 'D.Medvedev',
    }
  ]
)
