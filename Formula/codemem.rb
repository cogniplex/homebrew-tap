class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.7.0/codemem-macos-arm64.tar.gz"
      sha256 "fae9ee0f430b6c22fa75fa29198107b6d4f1f364be7b706e07f5f1f25e517f49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.7.0/codemem-linux-arm64.tar.gz"
      sha256 "7fe05a283d74f270fa427f3988b448e12b751e147073d2ed9ca3827878aa28fd"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.7.0/codemem-linux-amd64.tar.gz"
      sha256 "bfa6fbf575b3b6eae832d32fc2eebe3a6b895d24e9c9a1d7abec0c6b14a72d05"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
