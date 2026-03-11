class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.11.0/codemem-macos-arm64.tar.gz"
      sha256 "cbb4246d39018bfd9dae94fa2e70ab12036f578f52c91480ac4956e82b975e9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.11.0/codemem-linux-arm64.tar.gz"
      sha256 "36881e9fa1cecb691231566d9597a33b2882c7c9d46c5f3521bac807c654603c"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.11.0/codemem-linux-amd64.tar.gz"
      sha256 "34b2a797256c45bdeec6b15ac135e2440cca64ac9b27581bea821c843d96f60d"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
