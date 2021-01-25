
# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0165 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.16.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.16.5/astro_0.16.5_darwin_amd64.tar.gz"
    sha256 "08375da91b7409a25611e6320046d0a6d321f90ea60ab589a2019e5b26cb70a9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.16.5/astro_0.16.5_linux_amd64.tar.gz"
      sha256 "801c99c7a29d1153fc3ee40457d0667895b1234cd3c312daf285aaa2d84c4b45"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end
