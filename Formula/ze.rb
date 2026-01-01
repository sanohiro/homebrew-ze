# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-macos-aarch64.tar.gz"
      sha256 "ee74c301065e8a73ec5138034ffd1c63f1d86a7a6065487fb570893d8afd97c1"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-macos-x86_64.tar.gz"
      sha256 "2a309124afb3686e4d5ce73dc6b2852b02a2b84ef7296f8acf60e98f104f76ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-linux-aarch64.tar.gz"
      sha256 "8bdbb003cff7a204abae6734d709b91439761b33b1fea3b262c33864ce5583bb"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-linux-x86_64.tar.gz"
      sha256 "095a4e2d945dfbe13267bdae00a7d0e5d72dbea3b43144c187b4100b70fd7c37"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
