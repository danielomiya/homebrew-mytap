cask "league-of-legends-br" do
  version "1.0"
  sha256 :no_check

  url "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.br.zip",
      verified: "lol.secure.dyn.riotcdn.net/"
  name "League of Legends BR"
  desc "Multiplayer online battle arena game (Brazilian server)"
  homepage "https://www.leagueoflegends.com/pt-br/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  installer manual: "Install League of Legends br.app"

  uninstall delete: "/Applications/League of Legends.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*",
        "~/Library/Application Support/Riot Games/Install League of Legends",
        "~/Library/Application Support/Riot Games/League of Legends",
        "~/Library/Caches/com.riotgames.LeagueofLegends.LeagueClient",
        "~/Library/Logs/Riot Games/Install League of Legends br",
        "~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist",
        "~/Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState",
        "~/Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState",
        "/Users/Shared/Riot Games/Metadata/league_of_legends.live.game_patch",
        "/Users/Shared/Riot Games/Metadata/league_of_legends.live",
      ],
      rmdir: [
        "~/Documents/League of Legends",
        "~/Library/Application Support/Riot Games",
        "/Users/Shared/Riot Games",
      ]
end
