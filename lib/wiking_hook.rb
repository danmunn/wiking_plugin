class WikiNGHook  < Redmine::Hook::ViewListener

    def view_layouts_base_html_head(context = {})
        styles = stylesheet_link_tag('wiking', :plugin => :wiking_plugin)
        if File.exists?(File.join(File.dirname(__FILE__), "../assets/stylesheets/#{Setting.ui_theme}.css"))
            styles << stylesheet_link_tag(Setting.ui_theme, :plugin => :wiking_plugin)
        end
        styles
    end

    render_on :wiking_hook_demo, :partial => 'wiking/demo_hook'

end
