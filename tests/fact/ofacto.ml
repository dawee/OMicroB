
module Arduboy = struct
  (* external reset_cursor : unit -> unit = "ocaml_arduboy_reset_cursor" *)
  external init    : unit   -> unit = "ocaml_arduboy_init"
  external clear : unit -> unit = "ocaml_arduboy_clear"
  external print_int : int -> unit = "ocaml_arduboy_print_int"
  external print_string : string -> unit = "ocaml_arduboy_print"
  external display : unit   -> unit = "ocaml_arduboy_display"
  external millis : unit  -> int = "ocaml_arduboy_millis"
end

(* let rec facto = function
 *     0 -> 1
 *   | x -> facto (x-1) * x *)

let nat () =
  let st_n = ref 0 in
  let nat_step () =
    let n = !st_n in
    st_n := n + 1;
    n
in nat_step

let _ =
  let nat  = nat () in
  Arduboy.init ();
  nat ();
  Arduboy.init ()
  (* end_loop () *)


(* let _ =
 *   Arduboy.init ();
 *   (\* let x = Arduboy.millis () in
 *    * for i = 0 to 1000 do
 *    *   (\\* Arduboy.print_int(facto i); *\\)
 *    *   for i = 0 to 10 do
 *    *     facto i;
 *    *   done;
 *    * done;
 *    * let y = Arduboy.millis () in
 *    * Arduboy.print_string "\n";
 *    * Arduboy.print_int (y-x);
 *    *
 *    * Arduboy.display() *\)
 *   Arduboy.print_int (facto 4);
 *   Arduboy.display() *)