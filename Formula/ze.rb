# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-macos-aarch64.tar.gz"
      sha256 "6c4e8032f55225c2586a642bf2f093150af52713f63cf25b7a50fb3cfbb45778"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-macos-x86_64.tar.gz"
      sha256 "c4e8a9e22feceeabc48c92b9a65dc7fc0c73bf2cec4103a6bbbd2ec9623bd034"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-linux-aarch64.tar.gz"
      sha256 "add0610c2bb4b8ee459bc6625f6735b3155dd4c6221ced77d00493cb5e20e37e"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.5/ze-linux-x86_64.tar.gz"
      sha256 "ccf8249d5035d3fbcf81c64033645df6e989a5aca6871c4d37e1637b6e45f2b8"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
