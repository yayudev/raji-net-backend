PlaylistType = GraphQL::ObjectType.define do
  name "Playlist"

  field :id, types.ID, "Playlist id"
  field :name, types.String, "Playlist name"
  field :image, types.String, "Playlist cover image"
  field :plays, types.Int, "Times the playlist has been played"
  field :year, types.Int, "Year the playlist was created"
  field :tracks, TrackType.to_list_type, "Playlist tracks"
end
