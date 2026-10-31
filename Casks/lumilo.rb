cask "lumilo" do
  version "0.4.2"
  sha256 "0fb8b560ef1d14e82681ded0993203b874658838dea98688d4a51051738831db"

  url "https://github.com/kotuke/lumilo/releases/download/v#{version}/Lumilo.#{version}.arm64.dmg"
  name "Lumilo"
  desc "Menu-bar panel for local LLM engines: Splash, llama.cpp and TensorFold"
  homepage "https://github.com/kotuke/lumilo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Lumilo.app"

  uninstall quit: "ru.kotuke.lumilo"

  zap trash: [
    "~/Library/Application Support/Lumilo",
    "~/Library/Logs/Lumilo",
    "~/Library/Preferences/ru.kotuke.lumilo.plist",
  ]
end
