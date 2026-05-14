cask "smoovmux" do
  version "0.0.7"
  sha256 "404564a7d793f265c246dee59fb84e980a414f20c57c2a543375a6c26600e08f"

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
