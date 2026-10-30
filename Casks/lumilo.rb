cask "lumilo" do
  version "0.3.1"
  sha256 "3f3349f215ac738510ab61683f70a56a9e4bc6a5f239a642eb18d001111c62cb"

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
