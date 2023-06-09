def commit_type [] {
    {
        feat: "⚡"
        fix: '🐛'
        docs: "📚"
        style: "💎"
        refactor: "🔨"
        test: "🚨"
        chore: "🧹"
        revert: "⏪"
        WIP: "🚧"
        release: "📦"

    } 
}

export def "git icommit" [] {
    let prefix = $"(ansi red_bold)>(ansi reset)"
    let kind = (commit_type | columns | input list $"($prefix) Commit Kind: ")
    let msg = (input $"($prefix) Commit Message: ")
    
    
   git commit -m $"($kind) (commit_type | get $kind): ($msg)"

}