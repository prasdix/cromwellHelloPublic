version 1.0

task t2 {
    input {
        File in
        
    }
    command <<<
        sed -n '5,8p' ~{in} > samplet2out.txt
    >>>
    output {
        File out = "samplet2out.txt"
    }
}