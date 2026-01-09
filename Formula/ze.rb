# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.3/ze-macos-aarch64.tar.gz"
      sha256 "ae51c1455c8d577622f5d6c1915da5970292d88fe8b3c73783e5c80f4bc268af"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.3/ze-macos-x86_64.tar.gz"
      sha256 "ad1bc614dea374b336aae580f3a6345cb6a0d072926f9386f894493e66a52264"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.3/ze-linux-aarch64.tar.gz"
      sha256 "4392928876bc62f77bbbd2dab73791e57f367e86e3309ceda4b978bf9568270f"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.3/ze-linux-x86_64.tar.gz"
      sha256 "0a555bdff8f9ce90d3a22176b36efb36a52c42633a12567b1fbe64c9d29834f2"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
