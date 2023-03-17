version 1.0

task t3 {
    input {
        File in
       
    }
    command <<<
        sed -n '1,4p' ~{in} > samplet3out.txt
    >>>
    output {
        File out = "samplet3out.txt"
    }
}