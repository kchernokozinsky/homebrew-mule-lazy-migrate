class MuleLazyMigrate < Formula
  desc "Mule 4 migration tool"
  homepage "https://github.com/kchernokozinsky/mule-lazy-migrate"
  url "https://github.com/kchernokozinsky/mule-lazy-migrate/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "71526fac5cf9f08b07c94b09c66812602bc511ed9c3167a8f62904f9a6013255"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mule-lazy-migrate", "--help"
  end
end 