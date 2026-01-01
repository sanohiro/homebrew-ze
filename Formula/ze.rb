# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.4/ze-macos-aarch64.tar.gz"
      sha256 "089de075ac7682fb6956ebec795fe7d209a333ae49e39c64f585befbffca696d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.4/ze-macos-x86_64.tar.gz"
      sha256 "44196976a520e305d55213bfd10101160fd1b5048f5fcd80f62a37fa8220221c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.4/ze-linux-aarch64.tar.gz"
      sha256 "c597a42a9ec27421c9d1a34740e0f8be7dbe396fa2c066988aa11b16526bb4c0"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.4/ze-linux-x86_64.tar.gz"
      sha256 "f1e41db552778ae29e166c1d1acd93ca3db0219b2f75318ccefffacd9bed6f9a"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
