class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.17.0/codemem-macos-arm64.tar.gz"
      sha256 "2c59d2e5fdc60f0c9c8b32929296dac77b3281569f3a8c67bf8342c12523ea51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.17.0/codemem-linux-arm64.tar.gz"
      sha256 "5d0d46689cedb22277dd3aa2f4dd00585768107709d04a7ad0003d0d13c1d57f"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.17.0/codemem-linux-amd64.tar.gz"
      sha256 "106edf3df92b1e1e2928c6bb5d4d361555d022dfbf35d2def9b370c24634287c"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
