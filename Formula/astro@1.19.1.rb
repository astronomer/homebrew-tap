# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1191 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.1/astro_1.19.1_darwin_arm64.tar.gz"
        sha256 "b3d97b278a07c29333169fb5650e2e575928425e4e96b2c84c5a27d56a7830ea"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.1/astro_1.19.1_darwin_amd64.tar.gz"
        sha256 "600327acfb64457ff58b88c781073e949b2bf824d50844165fa02fd8dabe13ab"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.1/astro_1.19.1_linux_arm64.tar.gz"
        sha256 "40566061fbd027f14c55c35f3e70b12e0829d9d519d210fcb0ae8b8c36f4c2cf"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.1/astro_1.19.1_linux_amd64.tar.gz"
        sha256 "e62f4607cd505744b277357c0bf6c2ac20b7c2822e253033474337dfd5b7848d"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
