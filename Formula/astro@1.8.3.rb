# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT183 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
    version "1.8.3"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.8.3/astro_1.8.3_darwin_arm64.tar.gz"
        sha256 "06f8f463ddcdd200a4b053e582e42c578b62ab823b14f98dc4feb9107d8a3fba"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.8.3/astro_1.8.3_darwin_amd64.tar.gz"
        sha256 "64722ad7ad84e28a9802a6a840bb8b961d408bf62499ee4ba9653c75f9d47174"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.8.3/astro_1.8.3_linux_arm64.tar.gz"
        sha256 "6d25784daecbc9db0b092d5c99bf159f045553f1214c3e339ff59b131590512f"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.8.3/astro_1.8.3_linux_amd64.tar.gz"
        sha256 "1c5dfafe3005415fee5e875008af47c9ac6bccdd69b21515200ede2635c4af44"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
