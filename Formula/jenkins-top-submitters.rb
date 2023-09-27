# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JenkinsTopSubmitters < Formula
  desc "Jenkins Submitter Pivot Table analyzer."
  homepage "https://github.com/jmMeessen/jenkins-top-submitters"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.3/jenkins-top-submitters_1.2.3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e8f148b16b14e1391bad92bae36850f5d58ed61e913fd2c8ec83694b20fcee9"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.3/jenkins-top-submitters_1.2.3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d5afb01e3743650cf4b4d67bacbe5747788002526c1e76837de760be4164911f"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.3/jenkins-top-submitters_1.2.3_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "94538e97375250eaeddaf5e0dced6804abeb9ec58144041f2ff9a07b87ab1c5a"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.3/jenkins-top-submitters_1.2.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cc80f0bb37e0cb506482aae6cdaec91222c03506ccd6260b8c0155a9e463def2"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.3/jenkins-top-submitters_1.2.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d6fb86a723deef7152d40616bababa1b4a55b5abaf4814d62d6d6a42de646f4"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
  end

  test do
    system "#{bin}/jenkins-top-submitters version -d"
  end
end
