# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.8/ze-macos-aarch64.tar.gz"
      sha256 "7f417cb99ff00616c9e25954b4c8bdff1c776a44bcf452688e97e7efac0fb6cd"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.8/ze-macos-x86_64.tar.gz"
      sha256 "368e139be91b981f6becaa2d5ec8a2d5c75cf0580925b73e69da2a409892bcb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.8/ze-linux-aarch64.tar.gz"
      sha256 "89e41ecdf1196b2cdc123a5a6df71e1e75da7d6445127095186a97952d4a323c"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.8/ze-linux-x86_64.tar.gz"
      sha256 "484a72b335b3ace95d4be8ec323ab8d3b06d4b73219b9be8cec7f55dfd1dba3f"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
