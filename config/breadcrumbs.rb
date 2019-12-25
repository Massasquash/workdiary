crumb :root do
  link "", root_path
end

crumb :diaries do
  link "ダイアリー一覧", diaries_path
end

crumb :works do
  link "ワーク一覧", works_path
end

crumb :serchs do
  link "検索", serchs_path
end

crumb :settings do
  link "編集", settings_path
end

crumb :accounts do
  link "アカウント", accounts_path
end

crumb :diary do |diary|
  # diary_id = params[:diary_id]
  # diary_id ||= params[:id]
  # # memo追加から来た場合
  # if diary_id.nil?
  #   work = Work.find params[:work_id]
  #   diary = work.diary
  # else
  #   diary = Diary.find_by(id: diary_id)
  # end
  link diary.date, diary_path(diary)
  parent :diaries
end

crumb :diary_new do
  link "ダイアリー作成", new_diary_path
  parent :diaries
end

crumb :diary_edit do |diary|
  link "ダイアリー編集", edit_diary_path(diary)
  parent :diary, diary
end

crumb :work_new do |diary|
  link "ワーク作成", new_diary_work_path(diary)
  parent :diary, diary
end

crumb :work_edit do |diary, work|
  link "ワーク編集", edit_diary_work_path(diary, work)
  parent :diary, diary
end

crumb :memo_new do |work|
  diary = work.diary
  link "メモ作成", new_work_memo_path
  parent :diary, diary
end

crumb :memo_edit do |work, memo|
  diary = work.diary
  link "メモ編集", new_work_memo_path
  parent :diary, diary
end

crumb :categories do
  link "カテゴリ一覧", categories_path
  parent :settings
end

crumb :category_new do
  link "カテゴリ作成", new_category_path
  parent :categories
end

crumb :category_edit do |category|
  link "カテゴリ編集", edit_category_path(category)
  parent :categories
end

crumb :templates do
  link "テンプレート一覧", templates_path
  parent :settings
end

crumb :template_new do
  link "テンプレート作成", new_template_path
  parent :templates
end

crumb :template_edit do |template|
  link "テンプレート編集", edit_template_path(template)
  parent :templates
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).