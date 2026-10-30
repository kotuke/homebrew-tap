cask "lumilo" do
  version "0.3.0"
  sha256 "4e530e145c798a2ca42741078b81d9537d45291870a19cbe4b0a6de7c7d5d150"

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
