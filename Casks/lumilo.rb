cask "lumilo" do
  version "0.3.2"
  sha256 "168d77ae79db6ee7443dcd2a8feef2958fd13d00ea487fb8d88707bcc6be0189"

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
