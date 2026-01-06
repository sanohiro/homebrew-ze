# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.1/ze-macos-aarch64.tar.gz"
      sha256 "d52485b51fe5adbc8badea1312246d891060de49b3eaee08a5353e1d3b033cb5"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.1/ze-macos-x86_64.tar.gz"
      sha256 "5bb159e6fc527c43982c6d5ebb5b317633475e98b7b22c608f728b591339f55e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.1/ze-linux-aarch64.tar.gz"
      sha256 "225682fe76d5b8678dcbe1add276d0e6946e27a3afcfe32867342b8118bc3fd9"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.1/ze-linux-x86_64.tar.gz"
      sha256 "f784a2ebefef73d9e85856ec531695322b8f636e401e7dcc720ba90531f075aa"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
