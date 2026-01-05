cask "posturecv" do
  version "1.0.1"
  sha256 "c135c987636c0e1ac0fdb6fc74163c1d8f419b09dd39dab4b2c2f5dad78e85ee"

  url "https://github.com/richardli52/postureCV/releases/download/v#{version}/PostureCV-v#{version}.zip"
  name "PostureCV"
  desc "Minimalist menu bar utility for posture monitoring using CV"
  homepage "https://github.com/richardli52/postureCV"

  app "PostureCV.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/PostureCV.app"],
                   sudo: true
  end

  zap trash: [
    "~/.posture_config.json",
    "~/Library/Application Support/PostureCV",
    "~/Library/Caches/PostureCV",
    "~/Library/Preferences/com.richardli.posturecv.plist",
    "~/Library/Saved Application State/com.richardli.posturecv.savedState",
  ]
end