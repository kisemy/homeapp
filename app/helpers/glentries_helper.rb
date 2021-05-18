module GlentriesHelper

  def new_glentry id
    notice = <<-HTML
      # <p>#{t('views.glentries.created_msg')}</p>
    HTML
    notice = notice.html_safe
  end

  # def glentries_archived ids
   #  notice = <<-HTML
#  <p>#{ids.size} #{t('views.glentries.bulk_archived')}
#      <a href="?status=archived&per=#{@per_page}" data-remote="true">#{t('views.common.archived')}</a> #{t('views.glentries.section_on_page')}</p>
#     <p><a href='glentries/undo_actions?ids=#{ids.join(",")}&archived=true&page=#{params[:page]}&per=#{session["#{controller_name}-per_page"]}'  data-# # remote="true">#{t('views.glentries.undo_action')}</a> #{t('views.glentries.to_move_action')}</p>
   #  HTML
  #  notice = notice.html_safe
#  end

# def glentries_deleted ids
  # notice = <<-HTML
    #<p>#{ids.size} #{t('views.glentries.glentries_deleted_msg')}
     #<a href="?status=deleted&per=#{@per_page}" data-remote="true">#{t('views.common.deleted')}</a> #{t('views.glentries.section_on_page')}</p>
     #<p><a href='glentries/undo_actions?ids=#{ids.join(",")}&deleted=true&page=#{params[:page]}&per=#{session["#{controller_name}-per_page"]}'  data-remote="true">#{t('views.glentries.undo_action')}</a> #{t('views.glentries.deleted_back_to_active')}</p>
  #  HTML
   # notice = notice.html_safe
  #end

 





end
