class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.1/ax-darwin-arm64"
      sha256 "9aa77eda713aa3247f58c71b2defa61e039a055c1db7e4726878e9f973ed3f70"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.1/ax-darwin-x64"
      sha256 "9fff72cbf6f18c11859afada703c2264383d17283071a95dab80f5472bc4fecd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.1/ax-linux-arm64"
      sha256 "ffd28ba933354d0012da2226773fba3be4810f190a8f90a3a9fbf2e99db7a59b"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.1/ax-linux-x64"
      sha256 "3d4d97de30fcc4587b9722fa87892597ca2247fd2076f797f2b0f4467d4f9def"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
