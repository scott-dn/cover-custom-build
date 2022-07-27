use std::process::Command;

fn main() {
  Command::new("bash")
            .args(["build.sh"])
            .output()
            .expect("failed to execute process");
}

