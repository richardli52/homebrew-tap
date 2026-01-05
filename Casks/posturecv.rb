cask "posturecv" do
  version "1.0.0"
  sha256 "50f2db1e3bb3149f972359c5b436ebf1b3c6eed6c3d73f1f581ca3d511adf3ad"

  url "https://github.com/richardli52/postureCV/releases/download/v#{version}/PostureCV.zip"
  name "PostureCV"
  desc "Minimalist menu bar utility for posture monitoring using CV"
  homepage "https://github.com/richardli52/postureCV"

  app "PostureCV.app"

  zap trash: [
    "~/Library/Application Support/PostureCV",
    "~/Library/Caches/PostureCV",
    "~/Library/Preferences/com.richardli.posturecv.plist",
    "~/Library/Saved Application State/com.richardli.posturecv.savedState",
  ]
end
