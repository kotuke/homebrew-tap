cask "lumilo" do
  version "0.1.0"
  sha256 "20344c4f589737c2af96455fd69be8be3da35787d5220aa55188330495b07a8b"

  url "https://github.com/kotuke/lumilo/releases/download/v#{version}/Lumilo.#{version}.arm64.dmg"
  name "Lumilo"
  desc "Menu-bar panel for local LLM engines: Splash and llama.cpp"
  homepage "https://github.com/kotuke/lumilo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Lumilo.app"

  uninstall quit: "ru.kotuke.lumilo"

  zap trash: [
    "~/Library/Application Support/Lumilo",
    "~/Library/Logs/Lumilo",
    "~/Library/Preferences/ru.kotuke.lumilo.plist",
  ]
end
