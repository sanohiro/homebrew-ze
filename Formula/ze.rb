# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.0/ze-macos-aarch64.tar.gz"
      sha256 "59368d81398ef9e4582cbc5097a821f09cd769280ff9532a20f91a38c2107657"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.0/ze-macos-x86_64.tar.gz"
      sha256 "6893b7a6ab05caec74011b998b5f16df2dbefb349f390455a10826108f02ff29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.0/ze-linux-aarch64.tar.gz"
      sha256 "9a75ed2271d9596b8651406bfde80b30099ec2f8f0b70fd9afb29ae88f8ae727"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.0/ze-linux-x86_64.tar.gz"
      sha256 "d3c7c2dd7e6c410b7d26f4bb33e8936913a65346b766fa3a6f173134caffd291"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
