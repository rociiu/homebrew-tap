cask "harmune" do
  version "0.1.0"
  sha256 "0fa903ef41bd64837230dfb5742e6ccd09203ff22b16085bcbbbf98566f9e5d9"

  url "https://github.com/rociiu/harmune/releases/download/v#{version}/Harmune-#{version}-arm64.zip"
  name "Harmune"
  desc "Keyboard-first Apple Music player for the terminal"
  homepage "https://github.com/rociiu/harmune"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Harmune.app"
  binary "#{appdir}/Harmune.app/Contents/Resources/bin/harmune"

  uninstall quit: "com.orinbyte.harmune"

  zap trash: [
    "~/.config/harmune",
    "~/.local/state/harmune",
    "~/Library/Application Support/Harmune",
    "~/Library/Caches/Harmune",
    "~/Library/Logs/Harmune",
  ]
end
