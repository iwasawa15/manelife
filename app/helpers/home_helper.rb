module HomeHelper
  def menu
    content = "".html_safe
    if user_signed_in?
      content << link_to("ログアウト", destroy_user_session_path, method: :delete, class: "menu_button")
      content << link_to("マイページ", mypage_path, class: "menu_button")
      content << link_to("スケジュール", schedules_path, class: "menu_button")
    else
      content << link_to("ログイン", new_user_session_path, class: "menu_button")
    end
  end
end
