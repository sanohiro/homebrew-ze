# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.0/ze-macos-aarch64.tar.gz"
      sha256 "7baa17c41312e04f7315d903954cadebb369488a7335dea1218b48c3a5bf6f13"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.0/ze-macos-x86_64.tar.gz"
      sha256 "174bea502a18e947e33142762c46c496120cfe7b77781e756bf747b5bab49c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.0/ze-linux-aarch64.tar.gz"
      sha256 "094283a6ad61ab4457adbcfdbc074e90100dc22d747cd9a7d87cdc87eb8729a5"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.0/ze-linux-x86_64.tar.gz"
      sha256 "1164bf50f069e1ca3371cddcd2a9ef1e4601506b9be9f6cf959068012a6d6b9c"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
