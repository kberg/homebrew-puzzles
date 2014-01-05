require 'formula'

class Puzzles < Formula
  depends_on 'halibut' => :build
  homepage 'http://www.chiark.greenend.org.uk/~sgtatham/puzzles/'
  head 'svn://svn.tartarus.org/sgt/puzzles'
  sha1 ''

  def install
    ENV.deparallelize

    system "perl", "mkfiles.pl"
    system "make", "-d", "-f", "Makefile.osx", "all"
    prefix.install "Puzzles.app"
  end

  def caveats; <<-EOS
    Puzzles.app was installed in:
      #{opt_prefix}
 
    To symlink into ~/Applications, you can do:
      brew linkapps
    EOS
  end

  test do
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "--version"`.
    system "false"
  end
end
