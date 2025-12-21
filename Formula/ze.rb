# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.1/ze-macos-aarch64.tar.gz"
      sha256 "46a443e357038e70818d9644ede8402142edf6a24371964239f103aa950035ec"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.1/ze-macos-x86_64.tar.gz"
      sha256 "d00ff4cf78c22c969511eaeee2e51a0ce3d5e4a43cff29242a76a06565f7d8b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.1/ze-linux-aarch64.tar.gz"
      sha256 "101ba4ced0e06a8909bc7d96b2cbd34a9dfdb16c836d6080fd558371982ef182"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.1/ze-linux-x86_64.tar.gz"
      sha256 "e38aee0d24d32f993b400bd3f4a26ee1f3f2099b3aabee29f8f5e5045a7fba90"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
