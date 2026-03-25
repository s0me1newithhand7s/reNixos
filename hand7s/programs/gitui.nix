_: {
  programs = {
    gitui = {
      enable = true;
      keyConfig = ''
        (
          move_left: Some(( code: Char('h'), modifiers: "" )),
          move_right: Some(( code: Char('l'), modifiers: "" )),
          move_up: Some(( code: Char('k'), modifiers: "" )),
          move_down: Some(( code: Char('j'), modifiers: "" )),

          popup_up: Some(( code: Char('k'), modifiers: "" )),
          popup_down: Some(( code: Char('j'), modifiers: "" )),
          page_up: Some(( code: Char('b'), modifiers: "CONTROL" )),
          page_down: Some(( code: Char('f'), modifiers: "CONTROL" )),

          stage_hunk: Some(( code: Char('x'), modifiers: "" )),
          status_reset_item: Some(( code: Char('U'), modifiers: "SHIFT" )),

          shift_up: Some(( code: Char('K'), modifiers: "SHIFT" )),
          shift_down: Some(( code: Char('J'), modifiers: "SHIFT" )),
        )
      '';
    };
  };
}
