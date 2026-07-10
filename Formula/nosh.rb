class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.3.0/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "0769721dee95d840a56fd92ddfcc7623d7cec86284bf1f394645da1f6a9a874d" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.3.0/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "71e5d63cb2b03de7a0d074034ad5e9f087c7e163bbbd5efa1c05e7606fd2002b" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
