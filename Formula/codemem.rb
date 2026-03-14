class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.12.0/codemem-macos-arm64.tar.gz"
      sha256 "8c2b1ddd551c96a7487f80a3dd7a9863819fa4bf57d45713fd2e13a509ee094b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.12.0/codemem-linux-arm64.tar.gz"
      sha256 "76955ea25fe517c5ccf55b152a25b3287c0da4a74b9deefbe1ee5785e01d5068"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.12.0/codemem-linux-amd64.tar.gz"
      sha256 "115a3d41867790fa6e241190fc221c5f3d2cec89f41cbe30b851e5d6d5eb375c"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
