# switch to next i3wm workspace rely on current workspace
wm_curr_pos=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2)
i3-msg workspace $(($wm_curr_pos + 1)) > /dev/null 2>&1
