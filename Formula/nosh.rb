class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.3.1/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "dcd51b50fceebac9c6a9d4a5c92c5d891e8b859c846b1d5cec7117c3789475c4" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.3.1/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "6181ed644a3508ecc39c53a385b4f3839c4a49455bc0e5793acc08c4925def1e" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
