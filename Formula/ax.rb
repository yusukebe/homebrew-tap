class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.22/ax-darwin-arm64"
      sha256 "8195e5e3077afd4ce5ab059aa7e5a68e13deb9cd60ffb230aba6751c339e2234"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.22/ax-darwin-x64"
      sha256 "e3aff9ef518727d38bed1f211db471b3c5fb6e4a002fdf66b7d56a33293f65b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.22/ax-linux-arm64"
      sha256 "3532ee3dae09d98faaad6f7bb50cf5acc2942f63ca550d6444f5336073d173f9"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.22/ax-linux-x64"
      sha256 "66ec1252771692e67cf36b86b39f5520e9b61d512707a92aa2dd2a256e84937d"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
