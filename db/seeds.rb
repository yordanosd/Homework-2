# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PHOTO_URLS = [
#
#
#   model dress
#   "https://s-media-cache-ak0.pinimg.com/236x/11/b1/a1/11b1a15284ac40ee178d160cfa94ff39.jpg",
#   model runway skirt
#   "https://s-media-cache-ak0.pinimg.com/236x/5f/e5/23/5fe523caa8e3548221e507c8ac7d72a6.jpg",
#   traditioanl
#   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdh20Lb_Ku7WOwgUs56l59n6cTAWgf5dZCCP3i9ivsPnZ1KJE1Q",
#
#
# ]

USERS = [
  # id: 1     id: 2     id:3       id:4    id: 5
  {uid: 1}, {uid: 2}, {uid: 3}, {uid: 4}, {uid: 5}, {uid: 6}
]

CLOSETS = [
  {user_id: 2, description: "everyday shoes"},
  {user_id: 1, description: "Date night"},
  {user_id: 2, description: "Back to school"}, #3
  {user_id: 3, description: "Eritrean dresss"},
  {user_id: 2}, #5

  {user_id: 6},
  {user_id: 6, description: "Where should I get my next tattoo?"},
  {user_id: 6, description: "Bridesmaid dress color."},
  {user_id: 6},
  {user_id: 6},

  {user_id: 6},
  {user_id: 6, description: "Where should I get my next tattoo?"},
  {user_id: 6, description: "Purse???"},
  {user_id: 6},
  {user_id: 2},
  {user_id: 2, description: "Prom dress"}

]

PHOTOS = [

# shoes
  {votes: 3, closet_id: 1, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/42/c6/97/42c6975cc0de6377d641a10426dad322.jpg" },
  {votes: 3, closet_id: 1, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/3a/97/90/3a9790ffe78fc891a6be9f805fc934f8.jpg" },
  {votes: 3, closet_id: 1, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/be/ab/45/beab4566443f947344df007136b4870e.jpg" },
  # Date

  {votes: 3, closet_id: 2, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/3d/44/a9/3d44a906e06d7238e1dc4c11b34de647.jpg" },
  {votes: 3, closet_id: 2, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/0f/86/4b/0f864b53c35495c25ce32b3c214457a1.jpg" },
  {votes: 3, closet_id: 2, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/dd/ec/21/ddec21e0180ff1ecc4735bb843e0552c.jpg" },

  # madu wearing back to school clothes
  {votes: 20, closet_id: 3, photo_url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/13094102_996149027128530_2143113266564537133_n.jpg?oh=2c38ffe8fa6bfd0d17807f5c4acfd546&oe=5881D1D5" },
  {votes: 13, closet_id: 3, photo_url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/12799023_958459050897528_2875398579856918264_n.jpg?oh=81dd69c195e3a4aa97fecf4283719ba2&oe=5846CDDB" },
  {votes: 18, closet_id: 3, photo_url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/1948058_599718106771626_898357434_n.jpg?oh=015d496163131dab9c734024f5f1fb9b&oe=583D25D6" },

  # madu traditional clothes
  {votes: 28, closet_id: 4, photo_url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/13434902_1029446447132121_423007171690413132_n.jpg?oh=bdf6247d58376609d477b9005ad945fa&oe=584DC0E6" },
  {votes: 33, closet_id: 4, photo_url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/13319754_10156971013895274_5082218481131817197_n.jpg?oh=4697445b897ca8e4b119aa317240e4f1&oe=58535DB9" },
  # nails art
  {votes: 3, closet_id: 5, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/ba/14/5a/ba145a46568e5bfdb24ee6eba23bf753.jpg" },
  {votes: 1, closet_id: 5, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/47/ba/8e/47ba8e62a31c7d198c57838ff0d9224d.jpg" },
  {votes: 3, closet_id: 5, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/05/bb/da/05bbdaf85945bfc1f8802f116e7dd2b0.jpg" },
  {votes: 3, closet_id: 5, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/c7/05/08/c70508b89855c1348e669a86ed3e9da7.jpg" },

  #shoes
  {votes: 1, closet_id: 6, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/44/dc/94/44dc94d36b2eb444b6d4143c6b006588.jpg" },
  {votes: 3, closet_id: 6, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/32/eb/54/32eb542b98b10bb833fc141353d93e9c.jpg" },
  {votes: 3, closet_id: 6, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/44/dc/94/44dc94d36b2eb444b6d4143c6b006588.jpg" },

  # tattoo
  {votes: 3, closet_id: 7, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/f4/47/89/f447898d2532eeef32b9ddfc9a481a65.jpg" },
  {votes: 1, closet_id: 7, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/da/12/78/da1278cb703f87588b675de843c3c31a.jpg" },
  {votes: 3, closet_id: 7, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/b5/ee/b9/b5eeb92b548435f6766a7f91189aaa0d.jpg" },
  {votes: 3, closet_id: 7, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/da/4b/e9/da4be949f65047a581c356e78a1440e3.jpg" },

  # bridesmaid dress color
  {votes: 3, closet_id: 8, photo_url: "https://s-media-cache-ak0.pinimg.com/originals/e8/20/6b/e8206b2f0bf68ef990e2fb759f7d0fa7.jpg" },
  {votes: 1, closet_id: 8, photo_url: "https://s-media-cache-ak0.pinimg.com/originals/d7/96/c5/d796c59e394bd53d0597e373b46d2777.jpg" },
  {votes: 3, closet_id: 8, photo_url: "https://s-media-cache-ak0.pinimg.com/originals/80/03/ca/8003caa1f560ae399eb81dc4bf63f812.jpg" },

  # hair color ideas

  {votes: 3, closet_id: 9, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/3a/6f/c4/3a6fc440b36fb86ae4a90464849fdcec.jpg" },
  {votes: 3, closet_id: 9, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/8d/c8/11/8dc81179a276cc8b4ab44dd32c1de6f7.jpg" },
  {votes: 3, closet_id: 9, photo_url: "https://s-media-cache-ak0.pinimg.com/474x/cc/f4/ab/ccf4ab9add4f34d4e2a58d5b6a0ea6ff.jpg" },

  # back to school

  {votes: 3, closet_id: 10, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/12/51/f0/1251f086865f155fa8c6b9624af1904e.jpg" },
  {votes: 3, closet_id: 10, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/23/92/94/23929450e9010f397b9a9cca3e326e8d.jpg" },
  {votes: 3, closet_id: 10, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/da/fc/d4/dafcd471edc3189087d2291c26af1938.jpg" },

  #traditinal random
  {votes: 1, closet_id: 11, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx3brXthWOGYRbKZTvFbag5kuvR8Aj2Zigp5eOwLqk6o_C7t2N4g" },
  {votes: 3, closet_id: 11, photo_url: "https://i.ytimg.com/vi/WVW9BhLGUZk/hqdefault.jpg" },
  {votes: 3, closet_id: 11, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdh20Lb_Ku7WOwgUs56l59n6cTAWgf5dZCCP3i9ivsPnZ1KJE1Q" },

  # african dress print
  {votes: 3, closet_id: 12, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/82/d5/c8/82d5c88a8b89c7c7026f0992291e2a90.jpg" },
  {votes: 1, closet_id: 12, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/39/46/28/39462817685663bcb4e9b8cc93f6842c.jpg" },
  {votes: 3, closet_id: 12, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/92/f9/07/92f9076b738d44c8072b1537f21d7ba9.jpg" },
  {votes: 3, closet_id: 12, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/e1/e7/a5/e1e7a56da62768164eaa322914082866.jpg" },


    # purse

    {votes: 3, closet_id: 13, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/bc/0d/83/bc0d83a22ee04819ea1bc9da2dffd4c4.jpg" },
    {votes: 3, closet_id: 13, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/45/3b/e9/453be9d03b81dc383c077d1996ef1d0d.jpg" },
    {votes: 3, closet_id: 13, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/b5/d6/f4/b5d6f468fee3be408b79ff9251d614b6.jpg" },

# eritrean
{votes: 1, closet_id: 14, photo_url: "https://i.ytimg.com/vi/WVW9BhLGUZk/hqdefault.jpg"}, {votes: 1, closet_id: 14, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdh20Lb_Ku7WOwgUs56l59n6cTAWgf5dZCCP3i9ivsPnZ1KJE1Q"}, {votes: 3, closet_id: 14, photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx3brXthWOGYRbKZTvFbag5kuvR8Aj2Zigp5eOwLqk6o_C7t2N4g" },

# skirt
{votes: 1, closet_id: 15, photo_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2eaqk2ehx6B7DIELhR51_7nU4KMoq07j2WDjiHWfPb4fQjERujw" }, {votes: 3, closet_id: 15, photo_url: "https://s-media-cache-ak0.pinimg.com/736x/d6/ee/15/d6ee15c5c6cbf3c36fbcb8a88832d40e.jpg" },


#prom madu
{votes: 3, closet_id: 13, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/b6/a1/62/b6a1621a0b0d52d6dffe1e51f3035e5b.jpg" },
{votes: 3, closet_id: 13, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/f8/85/92/f885923f3967659ced8440f3ed088863.jpg" },
{votes: 3, closet_id: 13, photo_url: "https://s-media-cache-ak0.pinimg.com/564x/e7/58/a2/e758a21268ba11b139c87abe4f529625.jpg" },



]



USERS.each do |user|
  User.create(user)
  puts user
end

CLOSETS.each do |closet|
  Closet.create(closet)
end

PHOTOS.each do |photo|
  Photo.create(photo)
end
