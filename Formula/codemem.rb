class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.5.0/codemem-macos-arm64.tar.gz"
      sha256 "fbbb06f90295202d169080264ca4699bb932dac078060582ed7a6268b0d63841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.5.0/codemem-linux-arm64.tar.gz"
      sha256 "7de9fe5ba87d02ba58ec57de7202aa0c23dc6fe6565e9afc5aed0b6d4043fbee"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.5.0/codemem-linux-amd64.tar.gz"
      sha256 "f5d6ded3ff50b16cc2bc2cc74c243c2d70b2c8f16801c40693e16b6c66690cba"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
