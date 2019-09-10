歌曲列表 = [
    ("Phantom Of The Opera",      "Sarah Brightman"),
    ("Knocking On Heaven's Door", "Guns N' Roses"),
    ("Captain Nemo",              "Sarah Brightman"),
    ("Patterns In The Ivy",       "Opeth"),
    ("November Rain",             "Guns N' Roses"),
    ("Beautiful",                 "Sarah Brightman"),
    ("Mal's Song",                "Vixy and Tony"),
]

歌手们 = set()
for 歌曲, 歌手 in 歌曲列表:
    歌手们.add(歌手)

print(歌手们)
print("Sarah Brightman" in 歌手们)
print("#------------------------------------------------------------------------")
first_artists = {
    "Sarah Brightman",
    "Guns N' Roses",
    "Opeth",
    "Vixy and Tony",
}

second_artists = {"Nickelback", "Guns N' Roses", "Savage Garden"}

print("All: {}".format(first_artists.union(second_artists)))
print("Both: {}".format(second_artists.intersection(first_artists)))
print(
    "Either but not both: {}".format(
        first_artists.symmetric_difference(second_artists)
    )
)

bands = {"Guns N' Roses", "Opeth"}

print("first_artists is to bands:")
print("issuperset: {}".format(first_artists.issuperset(bands)))
print("issubset: {}".format(first_artists.issubset(bands)))
print("difference: {}".format(first_artists.difference(bands)))
print("*" * 20)
print("bands is to first_artists:")
print("issuperset: {}".format(bands.issuperset(first_artists)))
print("issubset: {}".format(bands.issubset(first_artists)))
print("difference: {}".format(bands.difference(first_artists)))
