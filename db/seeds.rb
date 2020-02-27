
# rake db:seed

User.create!(name: "okkun", email: "test@gmail.com", password: "11111111")

Favorite.create!(
  [
    {
      user_id: 1, player_id: 1,
    },
    {
      user_id: 1, player_id: 3,
    }
  ]
)

Player.create!(
  [
    {
      name:  'Rafael Nadal',
      name_jp:  'ラファエル・ナダル',
      name_etc: 'R.Nadal',
      name_search_1: 'ナダル',
      name_search_2: 'ラファ',
    },
    {
      name:  'Roger Federer',
      name_jp:  'ロジャー・フェデラー',
      name_etc: 'R.Federer',
      name_search_1: 'フェデラー',
      name_search_2: 'ロジャー',
    },
    {
      name:  'Novak Djokovic',
      name_jp:  'ノバク・ジョコビッチ',
      name_etc: 'N.Djokovic',
      name_search_1: 'ジョコビッチ',
      name_search_2: 'ジョコ',
    },
    {
      name:  'Daniil Medvedev',
      name_jp:  'ダニル・メドベージェフ',
      name_etc: 'D.Medvedev',
      name_search_1: 'メドヴェージェフ',
      name_search_2: 'ダニエル',
    }
  ]
)
