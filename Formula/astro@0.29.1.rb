# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0291 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
    version "0.29.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.1/astro_0.29.1_darwin_arm64.tar.gz"
        sha256 "736b8da686143f46a9aa3ecc6f0dbecbd646921abc2302014ab65b1d8165b54e"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.1/astro_0.29.1_darwin_amd64.tar.gz"
        sha256 "605765cd9951e56fb3beed9d3f3301207dd95406ca5498e0b0cdbfd345836961"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.1/astro_0.29.1_linux_arm64.tar.gz"
        sha256 "db38478eb9dce941e2f829540493d58ec63320a9de2ed5475ad768628bf8c6ac"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.1/astro_0.29.1_linux_amd64.tar.gz"
        sha256 "5786748bba48ddd4b3597cc8059297c4162e50ee8eebe1d84fee7ab73b8d3409"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end