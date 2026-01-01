# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.1/ze-macos-aarch64.tar.gz"
      sha256 "ae55f1a2663a15d3ebaf6603376df7eca3902095e06747db54bd4890ea3b7d32"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.1/ze-macos-x86_64.tar.gz"
      sha256 "73e7661dc6da1cbbda03267b98b2e366cb4fe00e28fb82f5e71a577a4802451f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.1/ze-linux-aarch64.tar.gz"
      sha256 "df65231d3c112151e967cc00ddb950e6d67e487faa45d4071452325d21f1d54f"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.1/ze-linux-x86_64.tar.gz"
      sha256 "7953d25dcf891ad3814f004ede5311f15ef13b9ca41304e3181fd59084c78b63"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
