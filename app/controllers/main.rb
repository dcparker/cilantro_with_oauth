class Main < Application
  OAuthConsumer = OAuth::Consumer.new(
    'nH7ue1Ky1XsQHjCzK0Wj',
    'N5pSnQuYpWiCGSGZw4YSprnhxhrfzlkfUA9q89yO',
    {
      :site => 'http://rw.remix.local',
      :request_token_path => '/api/oauth/request_token',
      :authorize_path     => '/api/oauth/authorize',
      :access_token_path  => '/api/oauth/access_token'
    }
  )

  namespace '/'

  get :home do
    view :index
  end

  get :oauth_login => 'oauth_login' do
    begin
      request_token = OAuthConsumer.get_request_token
      session[:request_token_token] = request_token.token
      session[:request_token_secret] = request_token.secret
      redirect request_token.authorize_url
    rescue => e
      content_type 'text/plain'
      e.to_s + "\n\n" + e.backtrace.join("\n")
    end
  end

  get :callback_url => 'callback_url' do
    begin
      request_token = OAuth::RequestToken.new(OAuthConsumer, session[:request_token_token], session[:request_token_secret])
      access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
      session[:access_token_token] = access_token.token
      session[:access_token_secret] = access_token.secret
      redirect url(:blog)
    rescue => e
      content_type 'text/plain'
      e.to_s + "\n\n" + e.backtrace.join("\n")
    end
  end

  get :blog => 'blogs/mine' do
    access_token = OAuth::AccessToken.new(OAuthConsumer, session[:access_token_token], session[:access_token_secret])
    blog_posts = access_token.get("/api/v1/blog_posts.json").body

    view.posts = JSON.parse(blog_posts)['blog_posts']
    view :myblog
  end

  # This is not yet limited to just one controller or namespace.
  error do
    Cilantro.report_error(env['sinatra.error'])
    view :default_error_page
  end
end
