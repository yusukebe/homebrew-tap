class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.15/ax-darwin-arm64"
      sha256 "62ffed70088cc1ad54dbdb4b82783a2fb6a4f56a9077e50f3eaff7ce2de68a12"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.15/ax-darwin-x64"
      sha256 "629ab313b62ac7b2719d96c6dc43f4de263154862f1d019e734ef34209a76125"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.15/ax-linux-arm64"
      sha256 "1d8f7dacf442aa84a1b9024a51a201f7b3e36b52f707e3ce83fa82471e0fdab3"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.15/ax-linux-x64"
      sha256 "aff17ea6bfdb59bb9c1b19d84c822201d56647b38cbaf45f04b6c39c10800ccf"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
