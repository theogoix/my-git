type path = string 
type path_string = string list
type data = string

type command = 
  | Init
  | Add

type git_repository = {
  worktree:path; 
  gitdir:path;
  conf:path
}

type git_object_type =
  | GitBlob
  | GitCommit
  | GitTree
and git_object =
  GitObject of git_object_type * data


let init_git_repo path force =
  let worktree = path in 
  let gitdir = Filename.concat path ".git" in 
  let conf = Filename.concat path "conif.ini" in 
  {worktree = worktree; gitdir = gitdir; conf = conf}


let repo_path repo file_list = List.fold_left Filename.concat repo.worktree file_list;;

let repo_file repo path_list = 3;;

let create_repo path = 3;;




let () =
  let my_repo = init_git_repo "./worktree" false in
  let my_path = repo_path my_repo ["chess"; "sicilian"; "najdorf.pgn"] in
  let another_directory = "./worktree" in
  Unix.mkdir another_directory 0o640;
  let hello = "hello world" in
  Printf.printf "%s\n" my_path;;
