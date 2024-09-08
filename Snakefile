rule all:
    input:
        "c.txt"

rule make_b:
    input:
        "a.txt"
    output:
        "b.txt"
    shell: "touch {output}"

rule make_c:
    input:
        "b.txt"
    output:
        "c.txt"
    shell: "touch {output}"
