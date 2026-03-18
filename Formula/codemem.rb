class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.14.1/codemem-macos-arm64.tar.gz"
      sha256 "c7611ad3bc6d800908e3397680c711e35f2f807e42068878e1ffccd0ce16a8f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.14.1/codemem-linux-arm64.tar.gz"
      sha256 "20ad700e7bdd2e779386c83512a4a977fdb9fee9d34fe3a45304692fa2535bce"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.14.1/codemem-linux-amd64.tar.gz"
      sha256 "58d0ee7e7815ee463ac1023547376c3255a051ee36e4f72b442634465911cfc6"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
