module HomeHelper
  def menu
    content = "".html_safe
    if user_signed_in?
      content << link_to("ログアウト", destroy_user_session_path, method: :delete, class: "login_button")
      content << link_to("マイページ")
    else
      content << link_to("ログイン", new_user_session_path, class: "login_button")
    end
  end
end
