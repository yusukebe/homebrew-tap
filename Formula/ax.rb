class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.19/ax-darwin-arm64"
      sha256 "6a28bc90f26b02531c742070ca7915c9fdf77d228edbf24c7ca6823bedc0cd45"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.19/ax-darwin-x64"
      sha256 "a4119421b577c5abc97d970b4d45c2406a609c7a1604156e749c23d8803d5a22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.19/ax-linux-arm64"
      sha256 "95aaa21d574a27b0c9cb81a002117d5f80e52a1b1601aa0b0f9cf33233a46cd8"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.19/ax-linux-x64"
      sha256 "51779492b5bc415102227043129358ee545dc64456b3e90c7a5223eeace2523c"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
