require "request_breakpoint/version"

module RequestBreakpoint
  class Breakpoint

    def initialize(app, ignore=%w(css jpeg jpg js png))
      @app = app
      @ignore = ignore
    end

    def call(env)
      debugger unless env["REQUEST_PATH"] =~ /\.(#{@ignore.join('|')})($|\?)/
      @app.call(env)
    end
  end

end


