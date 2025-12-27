# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.5/ze-macos-aarch64.tar.gz"
      sha256 "251343f485c85ead9528a936d9e1109c16e8f21ad5b2702397ff10335bed908d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.5/ze-macos-x86_64.tar.gz"
      sha256 "a1efe181b6e8970a9f66fd12182ea2545770e1d7410313f5275e6f07c7585217"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.5/ze-linux-aarch64.tar.gz"
      sha256 "0f375e6a58e4029cd8e95a5944bbf6142756d0374490ad2e92879a4a21183ec2"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.5/ze-linux-x86_64.tar.gz"
      sha256 "b3a9cfd00058350f686c9aa90c7ed2fbb4cf8ea32e43bd15271bd579d656f0cd"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
