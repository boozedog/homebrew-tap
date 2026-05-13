cask "smoovmux" do
  version "0.0.6"
  sha256 "f4f3a0bb0d6f4bed7bbac80b0a7fbd8413151ca3925e9a5b127a8e2897a342d8"

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
