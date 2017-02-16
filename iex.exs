IEx.configure(
  default_prompt: IO.ANSI.format([
      "\e[G",     # ANSI CHA escape code, moves cursor to column 1
      :magenta,   # provided by IO.ANSI
      "%prefix",  # IEx prompt variable
      ">"         # plain string
    ]) |> IO.chardata_to_string
)
