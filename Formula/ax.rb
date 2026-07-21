class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.20/ax-darwin-arm64"
      sha256 "17d742170bdcfb8ec461cff33a88223904ac8b5b24ce719d0fe8c41cb9a2a921"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.20/ax-darwin-x64"
      sha256 "20cfddeeaf2db262b794296550aaeb86ba8ec2521d0df998a553d8b3da0d7308"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.20/ax-linux-arm64"
      sha256 "6b8611bc5f31c6e8409d45cf6bdd22f4940789df19d280b8a847c7756e58281b"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.20/ax-linux-x64"
      sha256 "f7e9750a302274e11c8693a60eac59925089c22966a5e589f50b021bf3095f8f"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
