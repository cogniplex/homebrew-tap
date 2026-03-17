class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.13.0/codemem-macos-arm64.tar.gz"
      sha256 "e944a5fc037565733cbd4b0944839311390dcca694b98120e24055abab9a2412"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.13.0/codemem-linux-arm64.tar.gz"
      sha256 "c8dc1a1be35469b8864867fa831168f8a31e65319d847bf8431cab0bab79bd7e"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.13.0/codemem-linux-amd64.tar.gz"
      sha256 "15f8b4e130bf0a910ade7d5c4344a94d186b7e4a6041c8559a1a03e9d7271e29"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
