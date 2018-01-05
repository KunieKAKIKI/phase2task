module KvittersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_kvitters_path
    elsif action_name == 'edit'
      kvitter_path
    end
  end
end
