# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.2/ze-macos-aarch64.tar.gz"
      sha256 "c954755700a86db6194ee3043a3977311f2f12822eeb4c41129c19fc486dc17d"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.2/ze-macos-x86_64.tar.gz"
      sha256 "65a75abf819db836f974f291d31030cd2a28098431312bb60f040cd2f3f069e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.2/ze-linux-aarch64.tar.gz"
      sha256 "47b620afa47a11cee73b764e831c7a17ce658d5af250ded6cfa2c10386635e84"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.2/ze-linux-x86_64.tar.gz"
      sha256 "baa425bdf0a6e0234e82bd214bbbf6a1598d884154c2aaa3f28158479d383303"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
