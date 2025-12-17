# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.7/ze-macos-aarch64.tar.gz"
      sha256 "259543681445c10130ccd26d315a479383a8634aea34716effc526f728bbf6fe"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.7/ze-macos-x86_64.tar.gz"
      sha256 "2d2e74f5d3382515da25f829aba05cd6e3472c5a17d929f43882f0d67bf0e3a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.7/ze-linux-aarch64.tar.gz"
      sha256 "a1bde5fef1bbe0fb1d310c1c1ba35c0e5af9b905ab50498d3f0a55618e3639de"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.7/ze-linux-x86_64.tar.gz"
      sha256 "da5bc7a640ee8a059cce532d2b194b5f1cbf42eebf10fc16d2dfc90830d98aee"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
