class MuleLazyMigrate < Formula
  desc "Mule 4 migration tool"
  homepage "https://github.com/kchernokozinsky/mule-lazy-migrate"
  url "https://github.com/kchernokozinsky/mule-lazy-migrate/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "0d72a9d5b3da4e57fb8c8b453e5a88155f0c1570ab3eb47757b7db189540eeb4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mule-lazy-migrate", "--help"
  end
end 