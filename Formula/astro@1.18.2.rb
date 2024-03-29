# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1182 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.18.2/astro_1.18.2_darwin_arm64.tar.gz"
        sha256 "b1d11e523d0d69adad295d7653b741997554b00a619083e7ffc64c4f14ae982e"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.18.2/astro_1.18.2_darwin_amd64.tar.gz"
        sha256 "1fe3d7872ce3c4fd269c21a700f596f93b88de18ec4ff72efa9b3175538163e4"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.18.2/astro_1.18.2_linux_arm64.tar.gz"
        sha256 "869eb3d51d4f52808a34e056e474112e0c5889e6cb7bbf788feb24a776f3b0e2"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.18.2/astro_1.18.2_linux_amd64.tar.gz"
        sha256 "6cc99b7c3e2f8a60d530f973d8b351f3ec38c3e757323adc0c703c7449cf111f"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
