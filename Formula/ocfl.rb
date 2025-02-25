class Ocfl < Formula
  desc "Command-line tools for working with OCFL-based repositories"
  homepage "https://github.com/srerickson/ocfl-tools"
  url "https://github.com/srerickson/ocfl-tools/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "bc31b2479ff382f52d5be1fdb32478f2750d4856254866fefd9a3fcda12a34c8"
  license "MIT"

  depends_on "go" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    ldflags = "-s -w"
    system "go", "build", *std_go_args(ldflags:), "./cmd/ocfl"
  end

  test do
    system bin/"ocfl"
  end
end
