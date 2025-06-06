class Ocfl < Formula
  desc "Command-line tools for working with OCFL-based repositories"
  homepage "https://github.com/srerickson/ocfl-tools"
  url "https://github.com/srerickson/ocfl-tools/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "a5fddb20d0cb9b5a800ce11a8156fe80b9ca9bec96add1ac691354ce6da312e8"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w"
    system "go", "build", *std_go_args(ldflags:), "./cmd/ocfl"
  end

  test do
    system bin/"ocfl"
  end
end
