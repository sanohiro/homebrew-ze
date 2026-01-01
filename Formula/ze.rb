# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-macos-aarch64.tar.gz"
      sha256 "bc86cd51340e344f0775e1449525817a58aea0805ca87020ee0b23d5bc9638e8"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-macos-x86_64.tar.gz"
      sha256 "1cb9b51d48c3c15dde82e8d967c51bc0350af7e78e9e12f34909d98d61f8d703"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-linux-aarch64.tar.gz"
      sha256 "08a1780498c4414a96c1bd9f1fca6dc40239b465240a54fc3c3e17cf3ebc1d9d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.3/ze-linux-x86_64.tar.gz"
      sha256 "69054aa8aaf663d5ee0660f840a8400d0c234560454cfc38d11a6c27e68779f4"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
