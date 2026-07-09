class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.3/ax-darwin-arm64"
      sha256 "83e2aa09c639971118c3301e391e3a8e4d01bd122075529a9de5b5cabc9614dc"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.3/ax-darwin-x64"
      sha256 "8a84c380e368e490f7f29132a1887488a47326da1e5b61dffbddf9b2f40e14b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.3/ax-linux-arm64"
      sha256 "9cc38fef10111a41b2f6d9eb549d0ebf51b53827d3964d9dde069a9b01ebc564"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.3/ax-linux-x64"
      sha256 "9126c8fe9720e35a2211a9889bf2a447f5513a6bb094276fb97324384c4d706f"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
