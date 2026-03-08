# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.4/ze-macos-aarch64.tar.gz"
      sha256 "451685b874419280a0016a53ffca62305bbb0a988fc7bdcb3533872d0cc8ba1c"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.4/ze-macos-x86_64.tar.gz"
      sha256 "5993b25cbdd26962aa46d4daa61b7269cffa22262215205cb0ad7042d904edb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.4/ze-linux-aarch64.tar.gz"
      sha256 "51f403dcaab41bf525195fef5f7d687c5cd58694b171b32c95492da90686b31f"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.5.4/ze-linux-x86_64.tar.gz"
      sha256 "901f94c94ac76852ad09a1ad103452f12cf53ca513e6dab3dd10fd2ccff1a781"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
