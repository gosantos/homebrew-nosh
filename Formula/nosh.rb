class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.2.2/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "572f051e78a4924e18ed7577e712a90bfa1bd94cac987859340e7cd515f99be7" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.2.2/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "844dfec8ec9ba70ecb2afacd0a95eb93bdda45edfae1e3855e9d78ef799a4ef2" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
