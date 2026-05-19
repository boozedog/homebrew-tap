cask "smoovmux" do
  version "0.0.8"
  sha256 "c865ccb1cd1a2070dc30b839a24df022ea658d2c55e8780100ebd024414a2087"

  url "https://github.com/boozedog/smoovmux/releases/download/v#{version}/smoovmux-#{version}-macos-universal.zip"
  name "smoovmux"
  desc "Native macOS terminal workspace built on libghostty"
  homepage "https://github.com/boozedog/smoovmux"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sonoma"

  app "smoovmux.app"

  zap trash: [
    "~/.config/smoovmux",
    "~/Library/Application Support/dog.booze.smoovmux",
    "~/Library/Preferences/dog.booze.smoovmux.plist",
    "~/Library/Saved Application State/dog.booze.smoovmux.savedState",
  ]
end
