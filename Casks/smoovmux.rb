cask "smoovmux" do
  version "0.0.5"
  sha256 "745d15e540639d8bbb0f9b970a0192c2e67eee1251889b38aa44178f16a048f7"

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
