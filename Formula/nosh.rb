class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.2.3/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "0ec90482d015d9d85655d917dcab035797dce35c1e6e6b956d248cfd59f4423c" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.2.3/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "05f94a56a7ba674550f1d63487685a4488cd56bf67b3e250671885a0a4b69503" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
