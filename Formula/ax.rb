class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.16/ax-darwin-arm64"
      sha256 "168ca0ef005d38e83725adfea4ac26717de1c73102595a7d35e4b90072c45eed"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.16/ax-darwin-x64"
      sha256 "b62bf1e6a7854d1f0ebd0ef6dfba00b4d13d9173aa82322adf45ccf88dda8114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.16/ax-linux-arm64"
      sha256 "314dd74e3d05e174ad653cf6932b14b12188636e983aae716ac1c29ab9dadad3"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.16/ax-linux-x64"
      sha256 "9fafa3afcd059204f881876aa03ebffda48a98ed1de2867914d840c48b5c0023"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
