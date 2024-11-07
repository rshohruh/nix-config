{
  pkgs
, inputs
, outputs
, lib
, config
, packages
, ...
}:
let 
  any-pkgs = (with pkgs;[
    telegram-desktop
  ]) ++ (with pkgs.unstable; [
    zed-editor
  ]);
in
{
  config = {
    users.users = {
      rshohruh = {
        description = "Shohruh Rahmatillayev";
        initialPassword = "7744";
        isNormalUser = true;
        openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCkUAiTaYS6cpEOV2X93x2/pfCW/K9KwOsHewdMSdZf85mB3pqjNtYhUiSs7yOf/UH/ljP+Q+Z9UyDK/p5wZCKNpvfuzVsXgYSeFVyxeMc/KM7E6ZF54TjQkbJe4TUr3WRGVgTo96kvi1kivwYcL3qEVZvT1NxXdTeZsSo2MCpLdyWfcaOKw55e7zAsOVSb/+heoYk/YmURytbBdmco3rVwYMzSg1xiQ+66fdjMM56rAbOcLX72OrLMkgneC/xYncqdaWcD23rYNT3KhV5i4hbexFijL50Pj28zDliUdmiIcmtBEGED+vgfkqT1sUs4Z8dgd2Hol3tmqpPd9uDlyOPqne9gwSnLhUgaKVqaAxCcINm8McTVYbhK/3CP7c+OsZv9Pe6GtWXDWn2Cv1ECSzpKg/VybG3o77aahtK4kvT+UglXjeYLrnNIxEZQWxbASX4btpOcwoJfvUuyZdDJwOplM9UGpMT9uVIwXyIALQ8Pu6yxnjbM12ovAbcNDwEIe3xluDA/fi7eMpvY1fl5Q6d0hNXV4facuHOUjL8xkampL8Jk8lIsQKNgif5HD11K7+RT3dL0o1IKePyc5NgU7tFcUNWsb71X3gmI1+UWpq2dUK2mmr7dYCxLO49RlWUw9AuFA7CexiK43jwOulRzAmXekxGAfpqjyS5uoFkvelDA1w== rsohrux16@gmail.com"
        ];
        extraGroups = [
          "wheel"
          "video" 
          "networkmanager" 
          "docker" 
          "audio" 
          "git" 
          "input" 
          "systemd-journal"
        ];
      };
    };
  };
} 