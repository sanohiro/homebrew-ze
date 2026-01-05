# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.4/ze-macos-aarch64.tar.gz"
      sha256 "f68efcbb2d90e3626dfff54d7ce061597a5241e3a79698cc51d2b11f8652b11e"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.4/ze-macos-x86_64.tar.gz"
      sha256 "d20c23a7708b29cdf72c47aaef91efa8dfcadfafd33300eaeb93fc0394982211"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.4/ze-linux-aarch64.tar.gz"
      sha256 "93c587f7b193901d867195e78e6826dcbe28d9fa057bf1cc27139a2310441bbd"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.4/ze-linux-x86_64.tar.gz"
      sha256 "5eaaf273504c63214ae3276d5fb0e4eb3214b172319c01c61437c4a85666682d"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
