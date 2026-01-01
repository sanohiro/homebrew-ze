# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.4/ze-macos-aarch64.tar.gz"
      sha256 "68fda86fc17d7a0a153d42282728a486ae83ddd7e39d1dc84f735aa43a8d35f8"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.4/ze-macos-x86_64.tar.gz"
      sha256 "a9c44ed9d70c347b58a2789b410031dd28d00567c2fdd54cadcb2ade36a02a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.4/ze-linux-aarch64.tar.gz"
      sha256 "6cf5ba24ac7c38a0aa00b7a6551e04e00d4127e42634ab51800907b3f437199c"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.4/ze-linux-x86_64.tar.gz"
      sha256 "a92948f71aa589a481c4248386edeff56b94ac411f7787487814983cc9edc91e"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
